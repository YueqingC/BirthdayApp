//
//  ContentView.swift
//  BirthdayApp
//
//  Created by Yueqing Cai on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Joan", birthday: .now),
        Friend(name: "Sienna", birthday: .now)
    ]
    @State private var newName = ""
    @State private var newBirthday = Date.now
    
    var body: some View {
        NavigationStack{
            List(friends, id: \.name){ friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationBarTitle("Birthdays")
            .safeAreaInset(edge: .bottom){
                VStack(alignment: .center, spacing: 20){
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newBirthday){
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save"){
                        let newFriend = friend(name: newName, birthday: newBirthday)
                        friends.append(newFriend)
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
}
