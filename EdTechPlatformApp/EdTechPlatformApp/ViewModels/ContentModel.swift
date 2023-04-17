//
//  ContentModel.swift
//  EdTechPlatformApp
//
//  Created by Mohamad Alfarra on 2/27/23.
//

import Foundation

class ContentModel:ObservableObject {
    @Published var modules = [Module]()
    
    init(){
    //get local json data
        getLocalData()
    }//end of init
    
    func getLocalData(){
        //get url of the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        //read the file into the dataobject
        do{
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //decode jsonData into Module array
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign modules to modules property
            self.modules = modules
            
        }//end of do
        catch{
            print("json parse failed")
        }//endo fo catch
        
        
    }//end of getLocalData
    
}
