import 'package:flutter/material.dart';

class Todo {
  String title;
  bool isChecked;

  Todo({required this.title, this.isChecked = false});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _texteditingcontroller = TextEditingController();
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    Color bgcolor = ColorScheme.of(context).primary;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: Center(
          child: Text("Todo app", style: TextStyle(color: Colors.blue)),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _texteditingcontroller,
                    decoration: InputDecoration(
                      hintText: "Enter your Task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    if (_texteditingcontroller.text.isNotEmpty) {
                      setState(() {
                        todos.add(Todo(title: _texteditingcontroller.text));
                      });
                      _texteditingcontroller.clear();
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),

            SizedBox(height: 16),

            Text(
              "Todos",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final todo = todos[index];

                  return Row(
                    children: [
                      Checkbox(
                        value: todo.isChecked,
                        onChanged: (value) {
                          setState(() {
                            todo.isChecked = value!;
                          });
                        },
                      ),

                      Expanded(child: Text(todo.title)),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            todos.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),

                      // 🔥 Changed update icon to EDIT icon
                      IconButton(
                        onPressed: () {
                          TextEditingController updateController =
                              TextEditingController(text: todo.title);

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Update Todo"),
                                content: TextField(
                                  controller: updateController,
                                  decoration: InputDecoration(
                                    hintText: "Update task",
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        todo.title = updateController.text;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Update"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.edit), // ✔ Correct update icon
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
