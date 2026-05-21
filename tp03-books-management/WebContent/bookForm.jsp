<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><c:if test="${book != null}">Editar</c:if><c:if test="${book == null}">Novo</c:if> Livro - Gestão</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f3f4f6; color: #1f2937; }
        .modern-card { background: #ffffff; border: 1px solid #e5e7eb; border-radius: 16px; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05); }
        .modern-header { padding: 24px 32px; border-bottom: 1px solid #e5e7eb; }
        .form-label { font-weight: 500; font-size: 0.875rem; color: #374151; }
        .form-control { border-radius: 8px; border: 1px solid #d1d5db; padding: 0.625rem 1rem; transition: all 0.2s; font-size: 0.875rem;}
        .form-control:focus { border-color: #3b82f6; box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15); outline: none; }
        .btn-modern { border-radius: 8px; padding: 10px 20px; font-weight: 500; font-size: 0.875rem; }
        .btn-primary-custom { background-color: #2563eb; color: white; border: none; }
        .btn-primary-custom:hover { background-color: #1d4ed8; color: white; }
    </style>
</head>
<body class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="modern-card">
                    <div class="modern-header d-flex justify-content-between align-items-center">
                        <div>
                            <h4 class="mb-0 fw-bold">
                                <c:if test="${book != null}">Modificar Registro #${book.id}</c:if>
                                <c:if test="${book == null}">Cadastrar Novo Livro</c:if>
                            </h4>
                            <p class="text-muted small mt-1 mb-0">Preencha os dados técnicos da obra.</p>
                        </div>
                        <c:if test="${book != null}">
                            <span class="badge bg-light text-secondary border">Modo Edição</span>
                        </c:if>
                    </div>
                    <div class="card-body p-4 p-md-5">
                        <c:if test="${book != null}">
                            <form action="update" method="post">
                                <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                        </c:if>
                        <c:if test="${book == null}">
                            <form action="insert" method="post">
                        </c:if>
                            <div class="mb-4">
                                <label class="form-label">Título da Obra</label>
                                <input type="text" name="title" value="<c:out value='${book.title}' />" class="form-control" placeholder="Ex: O Código Da Vinci" required />
                                <div class="form-text small text-muted mt-1">Insira o nome completo da publicação.</div>
                            </div>
                            
                            <div class="row mb-5">
                                <div class="col-md-8">
                                    <label class="form-label">Autor Principal</label>
                                    <input type="text" name="author" value="<c:out value='${book.author}' />" class="form-control" placeholder="Ex: Dan Brown" required />
                                </div>
                                <div class="col-md-4 mt-3 mt-md-0">
                                    <label class="form-label">Preço Comercial (R$)</label>
                                    <input type="number" step="0.01" name="price" value="<c:out value='${book.price}' />" class="form-control" placeholder="0.00" required />
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-end gap-3 pt-3 border-top">
                                <a href="list" class="btn btn-modern btn-light border text-decoration-none">Cancelar</a>
                                <button type="submit" class="btn btn-modern btn-primary-custom">Salvar Registro</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <p class="text-center mt-4 text-muted" style="font-size: 0.8rem;">© 2026 - TP03</p>
    </div>
</body>
</html>