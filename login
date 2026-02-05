<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Medicina Pro</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #4f46e5 0%, #ec4899 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Inter', sans-serif;
            margin: 0;
        }
        .login-card {
            background: white;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        h1 { color: #1f2937; margin-bottom: 20px; }
        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #4f46e5;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover { background: #4338ca; }
        .error { color: #ef4444; font-size: 14px; margin-top: 10px; display: none; }
    </style>
</head>
<body>
    <div class="login-card">
        <h1>🩺 Área Restrita</h1>
        <input type="password" id="password" placeholder="Digite sua senha de acesso">
        <button onclick="fazerLogin()">Entrar</button>
        <p class="error" id="errorMsg">Senha incorreta!</p>
    </div>

    <script>
        function fazerLogin() {
            const senhaDigitada = document.getElementById('password').value;
            // DEFINA SUA SENHA AQUI EMBAIXO
            const senhaCorreta = "medicina2026"; 

            if (senhaDigitada === senhaCorreta) {
                // Salva um "token" no navegador dizendo que está logado
                localStorage.setItem("usuario_logado", "sim");
                // Manda para a página principal
                window.location.href = "index.html";
            } else {
                document.getElementById('errorMsg').style.display = "block";
            }
        }

        // Se já estiver logado, manda direto pro site
        if(localStorage.getItem("usuario_logado") === "sim") {
            window.location.href = "index.html";
        }
    </script>
</body>
</html>
