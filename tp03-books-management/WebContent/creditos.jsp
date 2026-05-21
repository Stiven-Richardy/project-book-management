<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Desenvolvedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f3f4f6; color: #1f2937; }
        .modern-card { background: #ffffff; border: 1px solid #e5e7eb; border-radius: 16px; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05); overflow: hidden; }
        .modern-header { padding: 32px 32px 24px; text-align: center; }
        .modern-header h4 { font-weight: 700; color: #111827; letter-spacing: -0.025em; margin: 0; font-size: 1.5rem; }
        .developer-section { padding: 0 32px 32px; text-align: center; }
        .dev-name { font-weight: 600; color: #1f2937; font-size: 1.125rem; margin-bottom: 0.25rem; }
        .dev-role { font-size: 0.875rem; color: #6b7280; font-weight: 500; margin-bottom: 1.5rem; }
        .info-box { background-color: #f9fafb; border-radius: 12px; padding: 20px; margin-top: 1.5rem; text-align: left; border: 1px solid #f3f4f6; }
        .info-label { font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.05em; color: #6b7280; font-weight: 600; margin-bottom: 0.5rem; }
        .info-text { font-size: 0.875rem; color: #374151; font-weight: 500; margin-bottom: 0; }
        .btn-modern { border-radius: 8px; padding: 10px 20px; font-weight: 500; font-size: 0.875rem; transition: all 0.2s; width: 100%; display: block; }
        .btn-outline-custom { background-color: #ffffff; border: 1px solid #d1d5db; color: #4b5563; }
        .btn-outline-custom:hover { background-color: #f9fafb; color: #111827; border-color: #9ca3af; }
    </style>
</head>
<body class="d-flex align-items-center min-vh-100 py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="modern-card">
                    <div class="modern-header">
                        <h4>Equipe de Desenvolvimento</h4>
                        <p class="text-muted small mt-2 mb-0">Desenvolvedores responsáveis pelo sistema</p>
                    </div>
                    
                    <div class="developer-section">
                        <div class="dev-name">Stiven Richardy Silva Rodrigues</div>
                        <div class="dev-role">Desenvolvedor Full-stack</div>
                        
                        <div class="dev-name">Guilherme Mendes de Sousa</div>
                        <div class="dev-role">Desenvolvedor Full-stack</div>
                        
                        <div class="info-box">
                            <div class="mb-3">
                                <div class="info-label">Instituição de Ensino</div>
                                <p class="info-text">IFSP - Campus Cubatão</p>
                                <p class="text-muted" style="font-size: 0.8rem; margin:0;">Análise e Desenvolvimento de Sistemas (ADS)</p>
                            </div>
                            <div>
                                <div class="info-label">Detalhes da Disciplina</div>
                                <p class="info-text">CBTSWE1 - ADS 571</p>
                                <p class="text-muted" style="font-size: 0.8rem; margin:0;">Prof. Wellington Tuler Moraes</p>
                            </div>
                        </div>
                        
                        <div class="mt-4">
                            <a href="index.jsp" class="btn btn-modern btn-outline-custom text-decoration-none">
                                ← Voltar ao Dashboard
                            </a>
                        </div>
                    </div>
                </div>
                <p class="text-center mt-4 text-muted" style="font-size: 0.8rem;">© 2026 - TP03</p>
            </div>
        </div>
    </div>
</body>
</html>