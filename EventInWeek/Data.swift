//
//  Data.swift
//  EventInWeek
//
//  Created by imac on 5/4/17.
//  Copyright © 2017 imac. All rights reserved.
//

import Foundation

class Data {
    var day : String
    var events : [Event]
    
    init(dayofWeek : String , eventsInday : [Event]) {
        day =  dayofWeek
        events = eventsInday
    }
    class func ListEvent() -> [Data] {
        return [self.Monday(),self.Tuesday(),self.Wednesday(),self.Thusday(),self.Friday(),self.Saturday(),self.Sunday()]
    }
    class func Monday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 1",description:"Hôm nay thứ 2"))
        return Data(dayofWeek: "Thứ 2",eventsInday : listEvents)
    }
    class func Tuesday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 2",description:"Hôm nay thứ 3"))
        return Data(dayofWeek: "Thứ 3",eventsInday : listEvents)
    }
    class func Wednesday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 3",description:"Hôm nay thứ 4"))
        return Data(dayofWeek: "Thứ 4",eventsInday : listEvents)
    }
    class func Thusday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 4",description:"Hôm nay thứ 5"))
        return Data(dayofWeek: "Thứ 5",eventsInday : listEvents)
    }
    class func Friday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 5",description:"Hôm nay thứ 6"))
        return Data(dayofWeek: "Thứ 6",eventsInday : listEvents)
    }
    class func Saturday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 6",description:"Hôm nay thứ 7"))
        return Data(dayofWeek: "Thứ 7",eventsInday : listEvents)
    }
    class func Sunday() -> Data{
        var listEvents = [Event]()
        listEvents.append(Event(title: "Sự Kiện 7",description:"Hôm nay CN"))
        return Data(dayofWeek: "Chủ Nhật",eventsInday : listEvents)
    }






}
