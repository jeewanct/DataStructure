import UIKit

//Activity selection problem
let start  =  [1, 3, 0, 5, 8, 5]
let finish =  [2, 4, 6, 7, 9, 9]

class ActivitySelectionProblem{
    var start: Int
    var finish: Int
    init(start: Int, finish: Int) {
        self.start = start
        self.finish = finish
    }
}

var activities = [
    ActivitySelectionProblem(start: 1, finish: 2),
    ActivitySelectionProblem(start: 3, finish: 4),
    ActivitySelectionProblem(start: 0, finish: 6),
    ActivitySelectionProblem(start: 5, finish: 7),
    ActivitySelectionProblem(start: 8, finish: 9),
    ActivitySelectionProblem(start: 5, finish: 9)
]

activities.sort { (first, second) -> Bool in
    if first.finish < second.finish{
        return true
    }
    return false
}

var activitiesPerformed = [ActivitySelectionProblem]()
for activity in activities{
    if let previousActivity = activitiesPerformed.last{
        if previousActivity.finish <= activity.start{
            activitiesPerformed.append(activity)
        }
    }else{
        activitiesPerformed.append(activity)
    }
}

print(dump(activitiesPerformed))






