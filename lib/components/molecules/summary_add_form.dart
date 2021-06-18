import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@immutable
class SummaryAddForm extends HookWidget {
  const SummaryAddForm(
      {required this.onChangedName, required this.onPressedAdd});

  final void Function(String) onChangedName;
  final void Function() onPressedAdd;

  @override
  Widget build(BuildContext context) {
    final isInitialized = useState(false);
    final nameTextEditingController = useTextEditingController(text: '');

    useEffect(() {
      nameTextEditingController.addListener(() {
        onChangedName(nameTextEditingController.text);
      });
      isInitialized.value = true;

      return () {};
    }, []);

    if (isInitialized.value == false) {
      return Container();
    }

    return Row(children: [
      Expanded(
          child: TextFormField(
        controller: nameTextEditingController,
        decoration: const InputDecoration(labelText: 'GitHub Account Name'),
      )),
      TextButton(
          onPressed: nameTextEditingController.text == '' ? null : onPressedAdd,
          child: const Text('ADD'))
    ]);
  }
}
