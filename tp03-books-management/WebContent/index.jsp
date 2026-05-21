<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu Principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f3f4f6; color: #1f2937; }
        .modern-card { background: #ffffff; border: 1px solid #e5e7eb; border-radius: 16px; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03); transition: transform 0.2s ease-in-out; }
        .modern-header { background-color: #ffffff; border-bottom: 1px solid #e5e7eb; border-top-left-radius: 16px; border-top-right-radius: 16px; padding: 24px; }
        .modern-header h3 { font-weight: 600; color: #111827; letter-spacing: -0.025em; }
        .btn-modern { border-radius: 8px; padding: 12px 20px; font-weight: 500; letter-spacing: 0.01em; transition: all 0.2s; }
        .btn-primary-custom { background-color: #2563eb; border: none; color: white; }
        .btn-primary-custom:hover { background-color: #1d4ed8; color: white; transform: translateY(-1px); box-shadow: 0 4px 12px rgba(37, 99, 235, 0.2); }
        .btn-outline-custom { border: 1px solid #d1d5db; color: #4b5563; background: transparent; }
        .btn-outline-custom:hover { background-color: #f9fafb; color: #111827; border-color: #9ca3af; }
    </style>
</head>
<body class="d-flex align-items-center min-vh-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="modern-card">
                    <div class="modern-header text-center">
                        <h3 class="mb-0">Gestão de Livros</h3>
                        <p class="text-muted small mt-1 mb-0">Adicione, Edite e/ou Remova seus livros</p>
                    </div>
                    <div class="card-body p-4 p-md-5">
                        <div class="d-grid gap-3">
                            <a href="new" class="btn btn-modern btn-primary-custom">+ Novo Livro</a>
                            <a href="list" class="btn btn-modern btn-outline-custom">Acessar Acervo</a>
                            <a href="creditos.jsp" class="btn btn-modern btn-outline-custom text-muted mt-2 border-0 shadow-none">Ver Desenvolvedores</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p class="text-center mt-4 text-muted" style="font-size: 0.8rem;">© 2026 - TP03</p>
    </div>
</body>
</html>