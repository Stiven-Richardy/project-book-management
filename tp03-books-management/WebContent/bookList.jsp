<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Acervo - Gestão de Livros</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f3f4f6; color: #1f2937; }
        .modern-card { background: #ffffff; border: 1px solid #e5e7eb; border-radius: 16px; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05); overflow: hidden; }
        .modern-header { background-color: #ffffff; border-bottom: 1px solid #e5e7eb; padding: 20px 24px; display: flex; justify-content: space-between; align-items: center; }
        .modern-header h4 { font-weight: 600; color: #111827; margin: 0; }
        .table-custom thead th { background-color: #f9fafb; color: #4b5563; font-size: 0.75rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; padding: 12px 24px; }
        .table-custom tbody td { padding: 16px 24px; vertical-align: middle; border-bottom: 1px solid #f3f4f6; font-size: 0.875rem; }
        .btn-modern { border-radius: 6px; padding: 8px 16px; font-size: 0.875rem; font-weight: 500; transition: all 0.2s; text-decoration: none; }
        .btn-primary-custom { background-color: #2563eb; color: white; }
        .btn-primary-custom:hover { background-color: #1d4ed8; color: white; }
        .btn-action-edit { background-color: #f3f4f6; color: #4b5563; border: 1px solid #d1d5db; margin-right: 8px; }
        .btn-action-edit:hover { background-color: #e5e7eb; }
        .btn-action-delete { background-color: transparent; color: #dc2626; border: 1px solid transparent; }
        .btn-action-delete:hover { background-color: #fee2e2; }
    </style>
</head>
<body class="py-5">
    <div class="container">
        <div class="modern-card">
            <div class="modern-header">
                <div>
                    <h4>Acervo de Livros</h4>
                    <p class="text-muted small mt-1 mb-0">Gestão integrada do banco de dados SQLite.</p>
                </div>
                <div>
                    <a href="creditos.jsp" class="btn btn-modern btn-action-edit">Equipe</a>
                    <a href="new" class="btn btn-modern btn-primary-custom">+ Novo Livro</a>
                </div>
            </div>
            
            <div class="table-responsive">
                <table class="table table-custom mb-0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Título da Obra</th>
                            <th>Autor</th>
                            <th>Preço (R$)</th>
                            <th class="text-end">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${listBook}">
                            <tr>
                                <td class="text-muted">#<c:out value="${book.id}" /></td>
                                <td class="fw-medium text-dark"><c:out value="${book.title}" /></td>
                                <td><c:out value="${book.author}" /></td>
                                <td class="fw-medium">R$ <c:out value="${book.price}" /></td>
                                <td class="text-end">
                                    <a href="edit?id=<c:out value='${book.id}' />" class="btn btn-modern btn-action-edit">Editar</a>
                                    <a href="delete?id=<c:out value='${book.id}' />" class="btn btn-modern btn-action-delete" onclick="return confirm('Confirma a exclusão permanente deste livro?');">Remover</a>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty listBook}">
                            <tr><td colspan="5" class="text-center py-5 text-muted">Nenhum livro cadastrado na base de dados.</td></tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
            <div class="p-3 bg-white border-top text-start">
                <a href="index.jsp" class="btn btn-modern btn-action-edit ms-2">← Voltar ao Menu Principal</a>
            </div>
        </div>
        <p class="text-center mt-4 text-muted" style="font-size: 0.8rem;">© 2026 - TP03</p>
    </div>
</body>
</html>