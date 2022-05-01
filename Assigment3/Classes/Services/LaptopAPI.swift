//
//  LaptopAPI.swift
//  Assigment3
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

typealias ScenariosSuccessClosure = (_ scenarios: [Scenario]) -> Void
typealias CaseSuccessClosure = (_ caseObject: Case) -> Void
typealias NetworkError = (_ code: Int?,_ error: String?) -> Void

class RecordService: NSObject {
    
    private static var _RecordService = RecordService()
    
    class var shared: RecordService {
        return _RecordService
    }
    
    deinit {
        
    }
    
    var sessionManager: SessionManager
    
    override init() {
        var defaultHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        
        defaultHeaders[Constants.HeaderKeys.Accept] = Constants.APIKeys.ContentType
        
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = defaultHeaders
        
        self.sessionManager = SessionManager(configuration: configuration)
        super.init()
    }
    
    func getAllScenarios(success: @escaping ScenariosSuccessClosure, failed: @escaping NetworkError) {
        
        let URL = Constants.API_BASE_RESOURCE + "scenarios"
        //let parameters: Parameters = [:]
        self.sessionManager.request(URL, method: .get, parameters: nil, encoding: JSONEncoding.default).responseAPI { (response) in
            
            if response.response == nil {
                failed(500, "Server error")
            }else if response.error != nil {
                failed(500, "Server error")
            } else {
                if response.response?.statusCode == 200 {
                    let json:JSON = self.ParseJSON(data: response.data!)!
          
                    var scenarioList:[Scenario] = [Scenario]()
                    for dataItem in json.arrayValue {
                        scenarioList.append(Scenario.init(fromJson: dataItem))
                    }
                    success(scenarioList)
                }else{
                    if response.response?.statusCode == 401 {
                        failed(401,"Not found")
                    }else if response.response?.statusCode == 402 {
                        failed(402,"Not found")
                    }else{
                        failed(500, "Server error")
                    }
                }
            }
        }
    }
    
    func getCaseById(caseId: Int, success: @escaping CaseSuccessClosure, failed: @escaping NetworkError){
        
        let URL = Constants.API_BASE_RESOURCE + "scenarios/cases/\(caseId)"
        
        self.sessionManager.request(URL, method: .get, parameters: nil, encoding: JSONEncoding.default).responseAPI { (response) in
            
            if response.response == nil {
                failed(500, "Server error")
            }else if response.error != nil {
                failed(500, "Server error")
            } else {
                if response.response?.statusCode == 200 {
                    let json:JSON = self.ParseJSON(data: response.data!)!
                    let caseObj = Case.init(fromJson: json[0])
                    
                    success(caseObj)
                }else{
                    if response.response?.statusCode == 401 {
                        failed(401,"Not found")
                    }else if response.response?.statusCode == 402 {
                        failed(402,"Not found")
                    }else{
                        failed(500, "Server error")
                    }
                }
            }
        }
    }
    
    func ParseJSON(data:Data?) -> JSON? {
        do {
            let json = try JSON(data: data!)
            return json
        } catch let error as NSError {
            print(error.localizedDescription)
            return nil
        }
    }
    
}

// interceptor
extension DataRequest {
    @discardableResult
    func responseAPI(queue: DispatchQueue? = nil, completionHandler: @escaping (DefaultDataResponse) -> Void) -> Self {
        
        return response(completionHandler: { (response) in
            print("Request: \(String(describing: response.request))")
            print("Response: \(String(describing: response.response))")
            print("Error: \(String(describing: response.error))")
            
            if response.error != nil {
                completionHandler(response)
                return
            }
            
            if response.response?.statusCode == 401 {
                
            }
            
            if response.response?.statusCode == 404 {
                print("Not found")
            }
            
            if response.response?.statusCode == 500 {
                print("Server error")
            }
            
            completionHandler(response)
        })
    }
}

