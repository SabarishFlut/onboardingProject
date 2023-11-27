
import 'package:flutter/material.dart';

class ObjectPractice extends StatefulWidget {
  const ObjectPractice({Key? key}) : super(key: key);

  @override
  State<ObjectPractice> createState() => _ObjectPracticeState();
}

class _ObjectPracticeState extends State<ObjectPractice> {
  @override
  void initState() {
    // TODO: implement initState
    print("${sum(50, 60)}**15");
    //print(10+90);
    super.initState();
  }
  int sum(int a, int b){
    int num1  =1;
    int num2  =2;
    print("${a+b}*23");
    return(a+b+100);
    //print("$c");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // body: Center(
      //   child: Container(
      //       child: SingleChildScrollView(
      //         child: Column(
      //           children: p1
      //               .asMap()
      //               .entries
      //               .map<Column>((appoinment) {
      //             print("${todaydate}**22");
      //             return Column(
      //                 children: [
      //                   Text("${appoinment.value["startTime"]}"),
      //                 ]
      //             );
      //           }).toList(),
      //         ),
      //       )
      //   ),
      // ),
    );
  }
  _appointment(){
    DateTime currentappointment ;
    for(int i=0;i<=p1.length;i++){
      currentappointment = p1[i];
      if(currentappointment == todaydate)
        print("today is appointment ");
      else
        print( "your appointment is on $currentappointment");
    }
  }
}





var todaydate = DateTime.now();
var nextappointment;

class Data {
  final DateTime starttime;
  final DateTime endtime;
  final String status;
  final int duration;
  final List createdby;
  Data(
      {required this.starttime,
      required this.endtime,
      required this.status,
      required this.duration,
      required this.createdby});

}

List<Data> datalist = [];


List p1 = [
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-31T15:15:00.000Z",
    "timezone": null,
    "endTime": "2022-08-31T15:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-09T16:00:00.000Z",
    "timezone": null,
    "endTime": "2022-09-09T16:15:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Jeff",
      "nameLast": "Marchese",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-21T12:15:00.000Z",
    "timezone": null,
    "endTime": "2022-09-21T12:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "cancelled",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-31T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-31T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-03-22T02:30:00.000Z",
    "timezone": null,
    "endTime": "2023-03-22T03:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 75,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-26T02:45:00.000Z",
    "timezone": null,
    "endTime": "2023-05-26T03:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T19:00:00.000Z",
    "timezone": "America/Los_Angeles",
    "endTime": "2023-05-31T19:55:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T06:29:00.000Z",
    "timezone": "America/Matamoros",
    "endTime": "2023-06-01T06:57:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 28,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-12T13:00:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-06-12T14:00:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "cancelled",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-07T02:45:00.000Z",
    "timezone": null,
    "endTime": "2023-06-07T03:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-06T17:45:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-06-06T18:40:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "no_show",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-11T16:30:00.000Z",
    "timezone": null,
    "endTime": "2022-08-11T17:15:00.000Z",
    "appointmentType": "initial_pt_trainer_visit",
    "status": "upcoming",
    "duration": 45,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-30T15:15:00.000Z",
    "timezone": null,
    "endTime": "2022-08-30T15:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "cancelled",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-21T05:30:00.000Z",
    "timezone": null,
    "endTime": "2022-09-21T05:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-18T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-18T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "cancelled",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-19T09:15:00.000Z",
    "timezone": null,
    "endTime": "2022-10-19T09:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-10T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-10T02:45:00.000Z",
    "appointmentType": "embrace_goals_fu",
    "status": "no_show",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T11:30:00.000Z",
    "timezone": "America/Adak",
    "endTime": "2023-06-01T12:25:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-05T15:00:00.000Z",
    "timezone": "MST7MDT",
    "endTime": "2023-06-05T15:30:00.000Z",
    "appointmentType": "Embrace ",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-12T14:00:00.000Z",
    "timezone": "CST6CDT",
    "endTime": "2023-06-12T15:00:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "cancelled",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-08T15:55:00.000Z",
    "timezone": "CST6CDT",
    "endTime": "2023-06-08T16:50:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "cancelled",
    "duration": 55,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-29T17:00:00.000Z",
    "timezone": "CST6CDT",
    "endTime": "2023-06-29T17:55:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "no_show",
    "duration": 55,
    "createdBy": {
      "nameFirst": "Jeff",
      "nameLast": "Marchese",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-29T15:15:00.000Z",
    "timezone": null,
    "endTime": "2022-08-29T15:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-12T16:30:00.000Z",
    "timezone": null,
    "endTime": "2022-08-12T17:15:00.000Z",
    "appointmentType": "fu_rd_visit",
    "status": "upcoming",
    "duration": 45,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-21T06:00:00.000Z",
    "timezone": null,
    "endTime": "2022-09-21T06:15:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-17T11:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-17T11:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-03-31T02:30:00.000Z",
    "timezone": null,
    "endTime": "2023-03-31T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-30T18:55:00.000Z",
    "timezone": "America/Los_Angeles",
    "endTime": "2023-05-30T19:50:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-12T15:00:00.000Z",
    "timezone": "MST7MDT",
    "endTime": "2023-06-12T16:00:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "complete",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-14T15:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-06-14T15:30:00.000Z",
    "appointmentType": "Embrace ",
    "status": "complete",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-26T15:15:00.000Z",
    "timezone": null,
    "endTime": "2022-08-26T15:30:00.000Z",
    "appointmentType": "empower_fu",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-11T21:00:00.000Z",
    "timezone": null,
    "endTime": "2022-08-11T21:45:00.000Z",
    "appointmentType": "initial_rd_visit",
    "status": "upcoming",
    "duration": 45,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-18T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-18T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-25T08:45:00.000Z",
    "timezone": null,
    "endTime": "2022-10-25T09:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T07:45:00.000Z",
    "timezone": "America/Matamoros",
    "endTime": "2023-06-01T08:15:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 30,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-07-19T16:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-07-19T16:30:00.000Z",
    "appointmentType": "Embrace ",
    "status": "complete",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-24T16:30:00.000Z",
    "timezone": null,
    "endTime": "2022-08-24T17:00:00.000Z",
    "appointmentType": "initial_pt_trainer_visit",
    "status": "cancelled",
    "duration": 30,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-31T17:15:00.000Z",
    "timezone": null,
    "endTime": "2022-08-31T18:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 45,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-17T11:15:00.000Z",
    "timezone": null,
    "endTime": "2022-10-17T11:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-12-12T14:00:00.000Z",
    "timezone": null,
    "endTime": "2022-12-12T14:15:00.000Z",
    "appointmentType": "fu_psychiatrist",
    "status": "upcoming",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-25T09:00:00.000Z",
    "timezone": null,
    "endTime": "2022-10-25T09:15:00.000Z",
    "appointmentType": "welcome_call",
    "status": "no_show",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T08:50:00.000Z",
    "timezone": "",
    "endTime": "2023-05-31T09:45:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-05T15:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-06-05T15:55:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "cancelled",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-06T12:45:00.000Z",
    "timezone": "MST7MDT",
    "endTime": "2023-06-06T13:45:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "upcoming",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-08-31T19:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-08-31T19:30:00.000Z",
    "appointmentType": "Embrace ",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {
      "nameFirst": "Jeff",
      "nameLast": "Marchese",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-22T18:00:00.000Z",
    "timezone": null,
    "endTime": "2022-08-22T19:00:00.000Z",
    "appointmentType": "initial_psychiatrist",
    "status": "cancelled",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-01T15:30:00.000Z",
    "timezone": null,
    "endTime": "2022-09-01T16:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-28T17:15:00.000Z",
    "timezone": null,
    "endTime": "2022-10-28T17:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "no_show",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-18T03:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-18T03:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "no_show",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-01-12T03:15:00.000Z",
    "timezone": null,
    "endTime": "2023-01-12T03:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-05T17:00:00.000Z",
    "timezone": null,
    "endTime": "2023-05-05T17:30:00.000Z",
    "appointmentType": "embrace_goals_fu",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T09:45:00.000Z",
    "timezone": "",
    "endTime": "2023-05-31T10:40:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T15:00:00.000Z",
    "timezone": "America/Los_Angeles",
    "endTime": "2023-06-01T15:55:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-05T16:00:00.000Z",
    "timezone": "CST6CDT",
    "endTime": "2023-06-05T17:00:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "upcoming",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-06T18:00:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-06-06T18:55:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "no_show",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-05T17:00:00.000Z",
    "timezone": null,
    "endTime": "2022-09-05T18:00:00.000Z",
    "appointmentType": "initial_pt_trainer_visit",
    "status": "no_show",
    "duration": 60,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-18T04:00:00.000Z",
    "timezone": null,
    "endTime": "2022-10-18T05:15:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 75,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T19:30:00.000Z",
    "timezone": null,
    "endTime": "2023-06-01T19:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-03-20T02:45:00.000Z",
    "timezone": null,
    "endTime": "2023-03-20T03:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-25T02:30:00.000Z",
    "timezone": null,
    "endTime": "2023-05-25T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 15,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T10:40:00.000Z",
    "timezone": "America/Lower_Princes",
    "endTime": "2023-05-31T11:35:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T03:50:00.000Z",
    "timezone": "",
    "endTime": "2023-05-31T04:00:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 10,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-05T17:00:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-06-05T18:00:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "upcoming",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-07T15:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-06-07T15:55:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "complete",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-08-15T16:00:00.000Z",
    "timezone": null,
    "endTime": "2022-08-15T16:30:00.000Z",
    "appointmentType": "empower_fu",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-08-10T04:30:00.000Z",
    "timezone": "Asia/Calcutta",
    "endTime": "2023-08-10T05:30:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "upcoming",
    "duration": 60,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-19T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-19T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-21T12:00:00.000Z",
    "timezone": null,
    "endTime": "2022-09-21T12:15:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-10-17T02:30:00.000Z",
    "timezone": null,
    "endTime": "2022-10-17T02:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": {"nameFirst": "Rashmi", "nameLast": "TP", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-09-22T03:30:00.000Z",
    "timezone": null,
    "endTime": "2022-09-22T03:45:00.000Z",
    "appointmentType": "welcome_call",
    "status": "complete",
    "duration": 15,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2022-12-16T10:30:00.000Z",
    "timezone": null,
    "endTime": "2022-12-16T11:00:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 30,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-03-22T07:45:00.000Z",
    "timezone": null,
    "endTime": "2023-03-22T08:30:00.000Z",
    "appointmentType": "welcome_call",
    "status": "upcoming",
    "duration": 45,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-05-31T11:35:00.000Z",
    "timezone": "America/Los_Angeles",
    "endTime": "2023-05-31T12:30:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T02:45:00.000Z",
    "timezone": "America/Bahia",
    "endTime": "2023-06-01T03:13:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 28,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-01T15:55:00.000Z",
    "timezone": "America/Los_Angeles",
    "endTime": "2023-06-01T16:50:00.000Z",
    "appointmentType": "rpm_device_setup",
    "status": "upcoming",
    "duration": 55,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "Dev",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-06-06T13:45:00.000Z",
    "timezone": "CST6CDT",
    "endTime": "2023-06-06T14:45:00.000Z",
    "appointmentType": "Embrace Goals",
    "status": "upcoming",
    "duration": 60,
    "createdBy": {
      "nameFirst": "Naveen",
      "nameLast": "Kumar A",
      "role": "nudj_admin"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-09-04T10:30:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-09-04T11:00:00.000Z",
    "appointmentType": "Embrace  (30 Min)",
    "status": "upcoming",
    "duration": 30,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-09-13T15:45:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-09-13T16:45:00.000Z",
    "appointmentType": "Nutrition Assessment (60 MIN)",
    "status": "cancelled",
    "duration": 60,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-09-18T16:00:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-09-18T16:30:00.000Z",
    "appointmentType": "Embrace  (30 Min)",
    "status": "upcoming",
    "duration": 30,
    "createdBy": {
      "nameFirst": "Nudj",
      "nameLast": "CM",
      "role": "care_manager_3"
    }
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-10-19T15:00:00.000Z",
    "timezone": "PST8PDT",
    "endTime": "2023-10-19T17:00:00.000Z",
    "appointmentType": "Fitness",
    "status": "upcoming",
    "duration": 120,
    "createdBy": {"nameFirst": "G", "nameLast": "P", "role": "nudj_admin"}
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-10-17T07:00:00.000Z",
    "timezone": "Asia/Calcutta",
    "endTime": "2023-10-17T07:55:00.000Z",
    "appointmentType": "Wellness Assessments",
    "status": "upcoming",
    "duration": 55,
    "createdBy": null
  },
  {
    "patientId": "1a4f206d-3704-4519-97df-c21d0051553b",
    "startTime": "2023-10-25T16:30:00.000Z",
    "timezone": "EST5EDT",
    "endTime": "2023-10-25T17:00:00.000Z",
    "appointmentType": "Embrace  (30 Min)",
    "status": "upcoming",
    "duration": 30,
    "createdBy": null
  }
];
