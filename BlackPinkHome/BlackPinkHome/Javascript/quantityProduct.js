
//Không nên đặt biến quantity toàn cục, nếu không value input sẽ không được update khi có DOM Event mới

function quantity__more() {
    var quantity = Number(document.getElementById('quantity__current').value);
    quantity += 1;
    document.getElementById('quantity__current').value = quantity;
}

function quantity__less() {
    var quantity = Number(document.getElementById('quantity__current').value);
    if (quantity > 1) {
        quantity--;
        document.getElementById('quantity__current').value = quantity;
    }
}

function checkInput() {
    //if (Number(document.getElementById('quantity__current').value) > 99) {
    //    document.getElementById('quantity__current').value = 99;
    //}
    if (Number(document.getElementById('quantity__current').value) < 1) {
        document.getElementById('quantity__current').value = 1;
    }
}