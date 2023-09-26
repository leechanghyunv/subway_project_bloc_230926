import '../../setting/exportA.dart';

class InputSubway extends StatefulWidget {

  final void Function(String)? onSelected;

  const InputSubway({super.key, this.onSelected});

  @override
  State<InputSubway> createState() => _InputSubwayState();
}

class _InputSubwayState extends State<InputSubway> {

  @override
  void initState() {
    super.initState();
    context.read<SubRepoBloc>().
    add(SubRepoEvent.repo());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubRepoBloc,SubRepoState>(
        builder: (context,state){
      return Container(
        width: 28.h,
        height: 15.6.w,
        child: state.when(
          initial: () => TextFrame(comment: 'initial',),
          loading: () => TextFrame(comment: 'loading',),
          error: (err) => TextFrame(comment: err),
          loaded: (loaded){
            final filtedstate = loaded.map((e) => e.subname).toSet().toList();
            return Column(
              children: [
                RawAutocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    return filtedstate.where((e) {
                      return e.contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  fieldViewBuilder: (
                      BuildContext context,
                      TextEditingController textEditingController,
                      FocusNode focusNode,
                      VoidCallback onFieldSubmitted,
                      ) {
                    return TextFormField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        hintText: '입력 후 완료버튼을 누르세요',
                        labelText: 'Enter Destination',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(
                          Icons.subway,
                          color: Colors.black,
                        ),
                        suffixIcon: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              textEditingController.clear();
                            },
                            child: Icon(Icons.clear, color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                  optionsViewBuilder: (BuildContext context,
                      AutocompleteOnSelected<String> onSelected,
                      Iterable<String> options) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        child: SizedBox(
                          width: 28.h,
                          height: 60.w,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white12,
                            ),
                            child: ListView.builder(
                                padding: const EdgeInsets.all(8.0),
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index){
                                  final String e = options.elementAt(index);
                                  return GestureDetector(
                                    onTap: (){
                                      onSelected(e);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: ListTile(
                                        title: TextFrame(comment: e),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    );
                  },
                  onSelected: widget.onSelected,
                ),
              ],
            );
          },
        ),
      );
    });
  }
}

