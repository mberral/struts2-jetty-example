<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><s:text name="hello.message" /></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .container {
            margin-top: 4em;
            padding-top: 2em;
            padding-bottom: 1em;
            max-width: 40em;
            border-style: solid;
            border-radius: 1em;
            border-color: primary;
        }
        .form-group {
            margin-bottom: 1.5em;
        }
        .form-control, .form-label {
            width: 100%;
        }
    </style>
    <s:head />
    <sx:head />
</head>
<body>
    <div class="container">
        <s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true" cssClass="form-horizontal">
            <h1 class="text-center"><s:text name="form.tittle.message" /></h1>
            <div class="form-group">
                <s:fielderror fieldName="invoiceBean.subject" cssClass="text-danger" />
                <label for="subject" class="form-label"><s:text name="form.subject.message" /></label>
                <s:textfield id="subject" name="invoiceBean.subject" cssClass="form-control" />
            </div>
            <div class="form-group">
                <s:fielderror fieldName="invoiceBean.grossAmount" cssClass="text-danger" />
                <label for="grossAmount" class="form-label"><s:text name="form.grossAmount.message" /></label>
                <s:textfield id="grossAmount" name="invoiceBean.grossAmount" type="number" step="0.01" cssClass="form-control" />
            </div>
            <div class="form-group">
                <s:fielderror fieldName="invoiceBean.dateFromAndDateTo" cssClass="text-danger" />
            </div>
            <div class="form-group row">
                <div class="col">
                    <s:fielderror fieldName="invoiceBean.dateFrom" cssClass="text-danger" />
                    <label for="dateFrom" class="form-label"><s:text name="form.fromDate.message" /></label>
                    <sx:datetimepicker id="dateFrom" name="invoiceBean.dateFrom" cssClass="form-control" />
                </div>
                <div class="col">
                    <s:fielderror fieldName="invoiceBean.dateTo" cssClass="text-danger" />
                    <label for="dateTo" class="form-label"><s:text name="form.toDate.message" /></label>
                    <sx:datetimepicker id="dateTo" name="invoiceBean.dateTo" cssClass="form-control" />
                </div>
            </div>
            <div class="form-group text-center">
                <s:submit cssClass="btn btn-primary" value="Enviar" />
            </div>
        </s:form>
    </div>
</body>
</html>