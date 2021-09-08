

let table = document.querySelector("#js-paint");
let trLength = table.rows.length;

console.log(table.rows.length);
console.log(table.rows[1].cells);

function paintTd(){
    for(let a=0; trLength>a; a++){
        for(let b=0; table.rows[a].cells.length>b; b++){
            if(table.rows[a].cells[b].innerHTML === "취약"){
                table.rows[a].cells[b].classList.add("red-color");
            }
        }
  }
}


function init(){
  paintTd();
}

init();