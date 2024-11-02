<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><s:text name="hello.message" /></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .container {
            padding-top: 4em;
            max-width: 40em;
        }
        .table thead th {
            background-color: #126aaa;
            color: white;
        }
        .table thead th:first-child {
            border-top-left-radius: 1em;
        }
        .table thead th:last-child {
            border-top-right-radius: 1em;
        }
        .table tr:last-child td {
            background-color: #c4e6ff;
            font-weight: bold;
        }
        .table thead th:last-child {
            width: 8em;
            text-align: center;
        }
        .table tbody tr td:last-child {
            text-align: right;
        }
    </style>
    <s:head />
    <sx:head />
    <fmt:setLocale value="es_ES" />
</head>
<body>
    <div class="container">
        <h1 class="p-3 text-center">Resumen de la factura</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Descripción</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><s:property value="invoiceBean.subject" /></td>
                    <td><fmt:formatNumber value="${invoiceBean.grossAmount}" type="currency" currencySymbol="€" maxFractionDigits="2" minFractionDigits="2" /></td>
                </tr>
                <tr>
                    <td class="text-end">Total Base Imponible:</td>
                    <td><fmt:formatNumber value="${invoiceBean.grossAmount}" type="currency" currencySymbol="€" maxFractionDigits="2" minFractionDigits="2" /></td>
                </tr>
                <tr>
                    <td class="text-end">I. V. A. 21%:</td>
                    <td><fmt:formatNumber value="${invoiceBean.ivaAmount}" type="currency" currencySymbol="€" maxFractionDigits="2" minFractionDigits="2" /></td>
                </tr>
                <tr>
                    <td class="text-end">TOTAL:</td>
                    <td><fmt:formatNumber value="${invoiceBean.totalAmount}" type="currency" currencySymbol="€" maxFractionDigits="2" minFractionDigits="2" /></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>