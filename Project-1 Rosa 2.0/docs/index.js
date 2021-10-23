function buy(name) {
    debugger;

    let cart = document.querySelector('#cart tbody');

    let newItem = cart.insertRow();

    let itemName = newItem.insertCell(0);
    itemName.innerHTML = name;

    let elementId = '#' + name.replace(' ', '');
    
    let itemPrice = newItem.insertCell(1);
    itemPrice.innerHTML = document.querySelector(elementId + ' .price').innerHTML;

    let itemQuantity = newItem.insertCell(2);
    itemQuantity.innerHTML = document.querySelector(elementId + ' td .quantity').value;
    itemQuantity = itemQuantity.innerHTML.replace('NaN', 'td .quantity');
    itemPrice = itemPrice.innerHTML.replace('$', '');
    
    itemPrice = parseFloat(itemPrice);
    itemQuantity = parseInt(itemQuantity);
    
    let itemSubtotal = newItem.insertCell(3);
    itemSubtotal.innerHTML ='$' + itemPrice*itemQuantity;
    let total = 0;
    document.querySelectorAll('#cart tbody tr').forEach(row =>(
        total = total + parseFloat(row.cells[3].innerHTML.replace('$', ''))
    ))
    document.querySelector('#total').innerHTML = '$' + total;
    document.querySelector(elementId + ' td .quantity').value = '';
    
}


function checkout(){
    document.querySelectorAll('#cart tbody tr').forEach(row => row.remove());
    document.querySelector('#total').innerHTML = '';

    alert("Thanks for your order!")
}