import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:4,
        child:Scaffold(
          appBar: AppBar(
            title:Text('whatsapp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                  child :Icon(Icons.camera_alt),
              ),
            Tab(
              child:  Text('Chat'),
            ),
             Tab(
               child: Text('Status'),
             ),
              Tab(
                child: Text('Call'),
              ),

            ],
          ),
            actions:[
              Icon(Icons.search),
              SizedBox(width: 10,),
          PopupMenuButton(
            icon:const Icon(Icons.more_vert_outlined),
              itemBuilder: (context,)=>const[
                PopupMenuItem(
                  value: 1,
                    child: Text('New Group')
                ),
                PopupMenuItem(
                    value: 2,
                    child: Text('Setting')
                ),
                PopupMenuItem(
                    value: 3,
                    child: Text('Log out')
                ),
              ]
          ),
              SizedBox(width: 10,)
            ],
          ),
          body: TabBarView(children: [
              Text('camera'),
            ListView.builder(
                itemCount:100,
                itemBuilder: (context,index){
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: Text('John wick'),
             subtitle: Text('where is my dog'),
                trailing: Text('3:20 pm'),
              );
            }),
            ListView.builder(
                itemCount:100,
                itemBuilder: (context,index){
                  if(index ==0 ){

                  }else{}
                  return  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        )
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                    title: Text('John wick'),
                    subtitle: Text('35 min ago?'),

                  );
                }),
          ListView.builder(
              itemCount:100,
              itemBuilder: (context,index){
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('John wick'),
                  subtitle: Text(index /2 ==2 ?'your miss call':'you missed video call'),
                  trailing: Icon(index /2 == 0 ? Icons.phone: Icons.video_call),
                );
              }),
          ],),
        )
    );
  }
}

