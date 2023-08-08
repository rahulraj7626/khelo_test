import 'package:flutter/material.dart';
import 'package:khelo_test/src/home/data/models/users_model.dart';

import '../../../config/constants/color_constants.dart';
import '../../../config/constants/string_constants.dart';
import '../../../config/styles.dart';
import '../../data/datasources/user_list.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/withdrawal_board.png",
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (MediaQuery.of(context).size.width / 2) / 80,
        ),
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return userCard(userList[index]);
        },
      ),
    );
  }

  Container userCard(UserData data) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Center(
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorConstants.yellow,
                width: 4.0,
              ),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          minLeadingWidth: 0,
          title: Row(
            children: [
              Text(data.name, style: whiteTextStyle12),
              Text(" ₹", style: yellowTextStyle14),
              Text(data.amount, style: whiteTextStyle12)
            ],
          ),
          subtitle: Text(
            '${data.sec}${Strings.sec2}',
            style: const TextStyle(
              color: ColorConstants.yellow,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
