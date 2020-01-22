document.addEventListener('DOMContentLoaded', () => {
  console.log('hey');
  const dropdown = document.querySelector('.dropdown');
  console.log(dropdown);

  dropdown.addEventListener('click', (e) => {
    const content = document.querySelector('.dropdown-content');
    content.classList.toggle('dropdown-show');
  })

  // window.onclick = (e) => {
  //   if (!e.target.classList('.dropdown')) {
  //     console.log('yo');
  //   }
  // }
  window.onclick = (e) => {
    const classList = e.target.classList;
    if (!classList.contains('dropdown')) {
      const content = document.querySelector('.dropdown-content');
      content.classList.remove('dropdown-show');
    }
  }
})