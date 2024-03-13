import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});
  @override
  State createState() => _TodoAppState();
}

class UserData {
  String task;
  String description;
  String date;

  UserData({required this.task, required this.description, required this.date});
}

class _TodoAppState extends State {
  List todoCard = [];

  TextEditingController taskController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // GlobalKey<FormFieldState> taskKey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> descriptionKey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> dateKey = GlobalKey<FormFieldState>();

  void submitData(bool doEdit, [UserData? forEditUseDataObj]) {
    if (taskController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        todoCard.add(
          UserData(
            task: taskController.text,
            description: descriptionController.text,
            date: dateController.text,
          ),
        );
      } else {
        setState(() {
          forEditUseDataObj!.task = taskController.text.trim();
          forEditUseDataObj.description = descriptionController.text.trim();
          forEditUseDataObj.date = dateController.text.trim();
        });
      }
    }
  }

  void clearData() {
    taskController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void bottomSheet(bool edit, [UserData? forEditObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Create To-Do",
                  style: GoogleFonts.lato(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: const Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: taskController,
                  // key: taskKey,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.add_task),
                    label: Text("Enter task"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: const Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: descriptionController,
                  // key: descriptionKey,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.description_outlined),
                    label: Text("Enter description"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(111, 85, 255, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: const Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: dateController,
                  // key: dateKey,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month_outlined),
                    label: Text("Enter Date"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickupDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025));
                    String dateFormat = DateFormat.yMMMd().format(pickupDate!);
                    setState(
                      () {
                        dateController.text = dateFormat;
                      },
                    );
                  },
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        edit ? submitData(edit, forEditObj) : submitData(edit);
                      });
                      Navigator.of(context).pop();
                    },
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(111, 81, 255, 1),
                      ),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void deleteCard(UserData userDataObj) {
    setState(() {
      todoCard.remove(userDataObj);
    });
  }

  void editCard(UserData editUserDataObj) {
    taskController.text = editUserDataObj.task;
    descriptionController.text = editUserDataObj.description;
    dateController.text = editUserDataObj.date;

    bottomSheet(true, editUserDataObj);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 32, 212),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.quicksand(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sagar!",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 37,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "Create Tasks",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              50,
                            ),
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: todoCard.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const DrawerMotion(),
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(height: 0),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              editCard(todoCard[index]);
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 40,
                                            width: 40,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                111,
                                                81,
                                                255,
                                                1,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              deleteCard(todoCard[index]);
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  111, 81, 255, 1),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20,
                                                ),
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 20,
                                          // spreadRadius: 4,
                                          offset: (Offset(0, 4)),
                                          color: Color.fromRGBO(0, 0, 0, 0.13))
                                    ]),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          margin: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOeBkBjGkyhZH_2CSVP3kQpzeYqbdUyyKbcA&s",
                                              ),
                                            ),
                                          ),
                                        ),
                                        // const SizedBox(width: 5),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 10),
                                              Text(
                                                todoCard[index].task,
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20),
                                                textAlign: TextAlign.justify,
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                todoCard[index].description,
                                                textAlign: TextAlign.justify,
                                                style: GoogleFonts.inter(
                                                    fontSize: 17),
                                              ),
                                              const SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                        Checkbox(
                                          value: true,
                                          onChanged: (val) {},
                                          activeColor: Colors.green,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 80,
                                        ),
                                        Text(
                                          todoCard[index].date,
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        onPressed: () {
          clearData();
          bottomSheet(false);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
