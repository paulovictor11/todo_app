import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app/shared/themes/app_colors.dart';
import 'package:todo_app/shared/themes/app_text_style.dart';
import 'package:todo_app/shared/widgets/buttons/button_widget.dart';
import 'package:todo_app/shared/widgets/cards/task_card_widget.dart';
import 'package:todo_app/shared/widgets/inputs/input_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _name = new TextEditingController();
  final _icon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.primary,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        leading: new InkWell(
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {},
          child: new Icon(FontAwesomeIcons.search, size: 22),
        ),
        title: new Text(
          'TODO', style: AppTextStyles.titleListTileBackground,
        ),
        centerTitle: true,
        actions: [
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: new InkWell(
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () => _showFormCategory(),
              child: new Icon(FontAwesomeIcons.plus, size: 22),
            ),
          )
        ],
      ),
      body: new SingleChildScrollView(
        physics: new BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _userCard(),
              ),
              new SizedBox(height: 8),
              new ListView(
                physics: new NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  new TaskCardWidget(
                    icon: FontAwesomeIcons.userAlt,
                    label: 'Personal',
                    caption: '9 tasks',
                    percent: 0.75,
                    onTap: () {}
                  ),
                  new SizedBox(height: 12),
                  new TaskCardWidget(
                    icon: FontAwesomeIcons.briefcase,
                    label: 'Work',
                    caption: '13 tasks',
                    percent: 0.75,
                    onTap: () {}
                  ),
                  new SizedBox(height: 12),
                  new TaskCardWidget(
                    icon: FontAwesomeIcons.home,
                    label: 'Home',
                    caption: '7 tasks',
                    percent: 0.75,
                    onTap: () {}
                  ),
                  new SizedBox(height: 12),
                  new TaskCardWidget(
                    icon: FontAwesomeIcons.book,
                    label: 'Study',
                    caption: '3 tasks',
                    percent: 0.75,
                    onTap: () {}
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _userCard() => new ListTile(
    leading: new CircleAvatar(
      backgroundColor: AppColors.shape,
      child: new Icon(
        FontAwesomeIcons.userAlt,
        color: AppColors.grey,
        size: 18,
      ),
    ),
    title: new Text(
      'Hello, Jane',
      style: AppTextStyles.titleListTileBackground,
    ),
    subtitle: new Text(
      'You have 3 tasks to do today',
      style: AppTextStyles.captionBoldBackground,
    ),
  );

  void _showFormCategory() => showModalBottomSheet(
    context: context,
    builder: (_) => new Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        new SizedBox(height: 12),
        new Text(
          'Adicionar Nova Categoria',
          style: AppTextStyles.titleBoldHeading,
        ),
        new SizedBox(height: 16),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: new InputWidget(
            label: 'Nome da categoria',
            keyboardType: TextInputType.text,
            controller: _name,
            icon: FontAwesomeIcons.fileSignature
          ),
        ),
        new SizedBox(height: 12),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: new InputWidget(
            label: 'Ícone da categoria',
            keyboardType: TextInputType.text,
            controller: _name,
            icon: FontAwesomeIcons.icons
          ),
        ),
        new SizedBox(height: 16),
        new ButtonWidget(
          label: 'Salvar',
          textStyle: AppTextStyles.titleRegular,
          background: AppColors.primary,
          onTap: () => Modular.to.pop()
        )
      ],
    )
  );
}