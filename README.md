# tabViewTutorial

## Quick guide

1. How do i jump to another tab item?
   - by setting `Router.shared.selectedTab` to 0,1,2
2. How do i add more tabitem?
   - adding following code block inside `TabView`
``` swift
NavigationView {
                Text("newly added view")
                    .font(.title)
                    .navigationTitle(Text("added view"))
            }
            .tabItem {
                Text("NEW")
            }
            .tag(3) // change this to the index you want
```

## Verbose and boring stuff
traditional approach of navigating to different view using `TabView` relies on having `@State var selected = 0` type of variable inside the View. 
I mean Im not saying this does not work. but consider a following scenario 
- i want to set up a button that transport user to second tabBar view, inside 3 child view down on the first view
- you do some data loading on second tabBar view, and if it fails, you want user to go to the first tabBar view

this way, you will have to pass that `@State var selected` as a binding into those views in question, which is always pain in the ass.
I set up a singleton `Router` class that lives through the app life cycle, and assigned this to be the MASTER ROUTER. 
all i need to do is to manipulate `Router.shared.selectedTab` variable anywhere in the app and it will change the tabBar item accordingly.
of course, this need to be fed in as `EnvironmentObject` so we can ensure its lifecycle, and `TabView` need to consume this as `$router.selectedTab`. but other than that, no headache should come from this
