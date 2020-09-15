
function profit(){
  const price = document.getElementById("item-price");

  price.addEventListener("change", function(){
    let profit = price.value;
    const tax = document.getElementById("add-tax-price");
    let fee = profit * 0.1
    tax.textContent = fee

    const tprofit = document.getElementById("profit");
    tprofit.textContent = profit - fee
    
  });
};

window.addEventListener("load", profit);



