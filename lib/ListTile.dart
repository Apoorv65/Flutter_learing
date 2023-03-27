import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //var arrName =['Kirti Singh', 'Vikas Yadav', 'Gautam Malhotra', 'Ujjwal Singh Nagar', 'Gaurav Mishra', 'Rukhsar Khan', 'Debabrata Dash', 'Virendra Singh', 'Himanshu Gupta', 'Himanshu Sharma', 'Shivam Singh', 'Shashank Gupta', 'Mukul Mayank', 'Yogesh Singh', 'Neeraj Jugran', 'Gourav Jha', 'Atul Sharan', 'Gourav Sharma', 'Himanshu Rana', 'Sachin Sardana', 'Shivangi Sharma', 'Sunil V', 'Alka Pundir', 'Rahul Sagar Rana', 'Shubham Sharma', 'Priyanka Mathur', 'Chander Kala Singh', 'Ganesh Raju Galla', 'Puru Sharma', 'Azad Kumar Yadav', 'Rohit Prasad', 'Swati Nighoskar', 'Lakshya Katarmal', 'Jayant Kumar', 'Vivek Sharma', 'Veenu Sharma', 'Neha Purwar', 'Abhinav Rajeev Massey', 'Sachin Siwal', 'Shivam Pratap Singh', 'Rohan Bokadiya', 'Rishi Gupta', 'Vivek Kumar Tiwari', 'Aman Gangwar', 'Sonal Chauhan', 'Vikash Gupta', 'Rajesh Yadav', 'Shanal Aggarwal', 'Sarfraz Ahmad', 'Aditya Singhal', 'Shivani Pandey', 'Ajit Kumar Singh', 'Akash Chhetri', 'Bhawna Yadav', 'Rajprakash Mittal', 'Brijbhan Tiwari', 'Harshita Raghuvanshi', 'Tanveer Fatima', 'Priyanshu Gola', 'Baljeet Singh Raghav', 'Narayan Polai', 'Dipendra Shakya', 'Sameer Khan', 'Shivam Agrawal', 'Priya Mahur', 'Tanuja Kumari', 'Ateet Shekhar', 'Saket Pandey', 'Aman Kumar', 'Shahbaz Khan', 'Saurabh Singh', 'Pankaj Joshi', 'Ritesh Keshri', 'Ketan Varshneya', 'Divyam Sharma', 'Darpan Kumar Kardam', 'Ankush Rana', 'Ashish Goswami', 'Jaskaran Singh', 'Sukesh Agrawal', 'Manohar Vishwakarma', 'Shivam Bhardwaj', 'Vishal Gupta', 'Sonu', 'Jitendra Bharve', 'Amit Kumar Sinha', 'Sachin Soni', 'Harshita Sethi', 'Vikrant Jha', 'Bunty Aggarwal', 'Vishal Kr Agrahari', 'Vikas Singh Bhau', 'Vinayak Sharma', 'Rahul Pandey', 'Khushboo Rathore', 'Juhi Singh', 'Suraj Rana', 'Pratap Biswas', 'Baleshwar Chauhan', 'Divyanshu Jadon', 'Davender Solanki', 'Arun Tyagi', 'Salokya Mathur', 'Abhijeet Arora', 'Anil Kumar', 'Ayush Chauhan', 'Kundan Pratap Singh', 'Kuldeep Tomer', 'Simran Rajput', 'Vishal Sahu', 'Shatakshi Sharma', 'Abhishek Rajput', 'Sanya Wadhwa', 'Harsh Sharma', 'Aftab Khan', 'Faisal Khan', 'Tahmeed Fatima', 'Anuj Mishra', 'Ashu Rai', 'Arya Goel', 'Bhawna Sharma', 'Sweta Shalini Biswal', 'Lokesh Rawat', 'Apoorv Mathur', 'Deepanshu Sharma', 'Abhinav Duhan',  'Garima Chopra', 'Deepak Sharma', 'Prashant Verma', 'Paras Phutela', 'Rohit Gupta', 'Bhushan Kumar', 'Vikramaditya', 'Ravi Kumar Agrawal', 'Robin Sharma', 'Sunil Mohanty', 'Rahul Kumar', 'Jitendra Kumar', 'Md Shadab Quamar', 'Nikhil Chaudhary', 'Umesh Chander'];

    var Name = ['Abella', 'Lana', 'Eva Elfie', 'Riley', 'Mia Malkova', 'Angela White', 'Emliy Wills','Cory Chase','Dani Daniels', 'Sara Jay'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter First App',style: TextStyle(fontSize: 25 ,color: Colors.red)),
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: const Icon( Icons.menu,),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text( '${index+1}',),
            title: Text(Name[index],),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add_circle),
          );
        },
        itemCount: Name.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
            thickness: 2,
          );
        },
      ),


    );
  }
}




