import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Notifications",
        ),
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              title: Text("Pesanan Anda telah dikirim."),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ),
              title: Text("Terjadi kesalahan saat pemesanan."),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.directions_bike,
                  color: Colors.white,
                ),
              ),
              title: Text("Pesanan Anda telah diantar oleh kurir"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              title: Text("Silahkan verifikasi email Anda."),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
