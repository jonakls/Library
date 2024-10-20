function showError(msg) {
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: msg,
        showConfirmButton: false,
        timer: 2000
    });
}

function showSuccess(msg) {
    Swal.fire({
        icon: 'success',
        title: '¡Hecho!',
        text: msg,
        showConfirmButton: false,
        timer: 2000
    });
}