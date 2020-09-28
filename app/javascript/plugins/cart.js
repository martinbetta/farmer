const updateOrderItem = (quantityField, id, quantity) => {
  fetch(`/order_items/${id}`, {
    headers: { accept: "application/json", 'content-type': 'application/json' },
    method: 'PATCH',
    body: JSON.stringify({
      order_item: {
        quantity: quantity
      }
    })
  })
    .then(response => response.json())
    .then((data) => {
      quantityField.innerText = data.order_item.quantity
      document.querySelector('#subtotal').innerText = data.subtotal
    });
}

const deleteOrderItem = (item) => {
  const parent = item.parentNode
  const id = parent.dataset.id

  fetch(`/order_items/${id}`, {
    headers: { accept: "application/json", 'content-type': 'application/json' },
    method: 'DELETE',
  })
    .then((res) => res.json())
    .then((data) => {
      parent.remove()
      document.querySelector('#subtotal').innerText = data.subtotal
    });
}

const addQuantityItem = () => {
  document.querySelectorAll('.quantity-add')
    .forEach(item => item.addEventListener('click', event => {
      const dropdownItem = item.parentNode.parentNode
      const id = dropdownItem.dataset.id
      const currentQuantity = parseInt(item.previousElementSibling.innerText)

      updateOrderItem(item.previousElementSibling, id, currentQuantity + 1)
    }));
}

const removeQuantityItem = () => {
  document.querySelectorAll('.quantity-sub')
    .forEach(item => item.addEventListener('click', event => {
      const dropdownItem = item.parentNode.parentNode
      const id = dropdownItem.dataset.id
      const currentQuantity = parseInt(item.nextElementSibling.innerText)

      updateOrderItem(item.nextElementSibling, id, currentQuantity - 1)
    }));
}

export function initCart() {
  document.querySelectorAll('.dropdown-item')
    .forEach(item => item.addEventListener('click', event => event.stopPropagation()));

  // handles the addItem event listener
  addQuantityItem()

  // handles the removeItem event listener
  removeQuantityItem()


  document.querySelectorAll('.delete-item')
    .forEach(item => item.addEventListener('click', event => {
      deleteOrderItem(item)
    }));
}
