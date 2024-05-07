
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

}