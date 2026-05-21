<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Erro no Sistema</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f3f4f6; color: #1f2937; }
        .modern-card { background: #ffffff; border: 1px solid #fecaca; border-radius: 16px; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05); overflow: hidden; }
        .error-header { background-color: #fef2f2; border-bottom: 1px solid #fecaca; padding: 24px; color: #991b1b; }
    </style>
</head>
<body class="d-flex align-items-center min-vh-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="modern-card">
                    <div class="error-header text-center">
                        <h4 class="mb-0 fw-bold">⚠ Falha na Execução</h4>
                    </div>
                    <div class="card-body p-4 p-md-5">
                        <p class="text-muted mb-2 fw-medium">Detalhes da Exceção (Log):</p>
                        <div class="bg-light p-3 rounded border border-light text-danger" style="font-family: monospace; font-size: 0.85rem; word-wrap: break-word;">
                            <%= exception != null ? exception.getMessage() : "Erro desconhecido. Consulte o log do Tomcat." %>
                        </div>
                        <div class="mt-4 text-center">
                            <a href="index.jsp" class="btn btn-outline-secondary w-100 py-2">Voltar ao Início</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p class="text-center mt-4 text-muted" style="font-size: 0.8rem;">© 2026 - TP03</p>
    </div>
</body>
</html>