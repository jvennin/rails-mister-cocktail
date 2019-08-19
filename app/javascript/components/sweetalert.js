import swal from 'sweetalert';

const valide = () => {
  const btn = document.querySelector(".title");
  if (btn !== null){
    btn.addEventListener('click', (event) => {
        //swal("Hello world!");
        swal("Good job!", "You clicked the button!", "success");
    });
  }
}

export { valide };
