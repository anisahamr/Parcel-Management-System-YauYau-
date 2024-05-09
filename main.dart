
import 'dart:html';

void main() {

//---------------Nor Anisah 2114564---------------------//
 querySelector('#receiverBtn')?.onClick.listen((_) {
    // Redirect to receiver page
    window.location.href = 'receiver.html';
  });

  querySelector('#senderBtn')?.onClick.listen((_) {
    // Redirect to receiver page
    window.location.href = 'sender.html';
  });

  querySelector('#adminBtn')?.onClick.listen((_) {
    // Redirect to receiver page
    window.location.href = 'admin.html';
  });


var parcelCount = 0;


  void showLogin(String houseId) {
  final buttonGrid = querySelector('#buttonGrid');
  final loginForm = querySelector('#loginForm') as DivElement;
  final houseIdInput = loginForm.querySelector('#house_id') as InputElement;

  buttonGrid?.style.display = 'none';
  loginForm.style.display = 'block';
  houseIdInput.value = houseId;
}

  void hideLogin() {
    final buttonGrid = querySelector('#buttonGrid');
    final loginForm = querySelector('#loginForm') as DivElement;

    buttonGrid?.style.display = 'grid';
    loginForm.style.display = 'none';
  }

 
  void hideParcelForm() {
    final loginForm = querySelector('#loginForm') as DivElement;
    final parcelForm = querySelector('#parcelForm') as DivElement;

    parcelForm.style.display = 'none';
    loginForm.style.display = 'block';
  }

   void updateParcelCount() {
   final parcelCountElement = querySelector('#parcelCount') as SpanElement?;
    parcelCountElement?.text = parcelCount.toString();
  }


  querySelectorAll('.storage-grid button').forEach((button) {
    button.onClick.listen((event) {
      final houseId = (event.target as ButtonElement).id;
      showLogin(houseId);
    });
  });

  // Event listener for the sender button
  final senderButton = querySelector('#senderBtn');
  senderButton?.onClick.listen((_) {
    showLogin('defaultHouseId'); // Change 'defaultHouseId' to the desired default value
  });


  querySelector('#loginBtn')?.onClick.listen((_) {
     window.location.href = 'drop.html';
  });

  querySelector('#backBtn')?.onClick.listen((_) {
    hideLogin();
  });

  querySelector('#plusBtn')?.onClick.listen((_) {
    if (parcelCount < 5) {
      parcelCount++;
      updateParcelCount();
    } else {
      window.alert('Maximum parcel limit reached for this storage!');
    }
  });

  querySelector('#minusBtn')?.onClick.listen((_) {
    if (parcelCount > 0) {
      parcelCount--;
      updateParcelCount();
    }
  });

  querySelector('#dropBtn')?.onClick.listen((_) {
      window.alert('Parcel Dropped! Thank you for using our service');
    }
  );

  querySelector('#doneBtn')?.onClick.listen((_) {
    window.location.href = 'index.html';
  });

  //---------------Nor Anisah 2114564---------------------//

 
//-------- Nuramalia Batrisyia bt Md Noor (2116432) ------//

  final AdminloginBtn = querySelector('#AdminloginBtn');
  final usernameInput = querySelector('#username')as InputElement;
  final passwordInput = querySelector('#password') as InputElement;
  final storageGrid = querySelector('#storageGrid')as DivElement;
  final loginBox = querySelector('.login-box')as DivElement;

  AdminloginBtn!.onClick.listen((event) {

    final username = usernameInput.value; //storing the input of username 
    final password = passwordInput.value; // storing the input of password

    // a condition where only authorized username 'admin' and password '123' is allowed
    if (username == 'admin' && password == '123') {
      
      storageGrid.style.display = 'block';
      loginBox.style.display = 'none';
    } else {
      window.alert('Invalid username or password');
    }
  });



// button event when button A1 - A10 is clicked
 final A1Btn = querySelector('#storageGrid');
  storageGrid.onClick.listen((event) {
     window.location.href = 'adminView.html';
  });

  final backBtn = querySelector('#backBtn');
  //final storageGrid = querySelector('#storageGrid');
  final adminView = querySelector('.admin-view');

  backBtn?.onClick.listen((_) {
    print("Back button clicked!"); // Add this line for debugging
    // Toggle visibility of buttons and admin view elements
    storageGrid.style.display = 'grid'; // Show the buttons A1 to A10
    adminView!.style.display = 'none'; // Hide the admin view elements
  });

 
  //-------- Nuramalia Batrisyia bt Md Noor (2116432) ------//


}
