document.getElementById('loginForm').addEventListener('submit', function (event) {
  event.preventDefault(); // Ngừng việc gửi form mặc định

  const username = document.getElementById('username').value;
  const password = document.getElementById('password').value;

  // Kiểm tra đơn giản, có thể thay thế với kiểm tra thực tế từ server
  if (username === 'admin' && password === '12345') {
      alert('Đăng nhập thành công!');
      window.location.href = 'dashboard.html'; // Redirect đến trang sau khi đăng nhập
  } else {
      document.getElementById('error-message').innerText = 'Tên đăng nhập hoặc mật khẩu không đúng';
  }
});
