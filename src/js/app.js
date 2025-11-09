//Script para ver y no ver contraseña
function togglePasswordVisibility() {
  const passwordInput = document.getElementById("password");
  const toggleIcon = document.getElementById("toggle-password");

  const isPassword = passwordInput.type === "password";
  passwordInput.type = isPassword ? "text" : "password";

  // Cambiar ícono (opcional)
  toggleIcon.textContent = isPassword ? "🔒" : "🔓";
}

function togglePassword2Visibility() {
  const passwordInput2 = document.getElementById("password2");
  const toggleIcon2 = document.getElementById("toggle-password2");

  const isPassword2 = passwordInput2.type === "password";
  passwordInput2.type = isPassword2 ? "text" : "password";

  // Cambiar ícono (opcional)
  toggleIcon2.textContent = isPassword2 ? "🔒" : "🔓";
}
