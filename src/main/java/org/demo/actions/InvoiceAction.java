package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.InvoiceBean;

import java.math.BigDecimal;

public class InvoiceAction extends ActionSupport  {

    InvoiceBean invoiceBean;

    @Override
    public String execute() throws Exception {

        // Para calcular el 21% del Importe Bruto
        if (invoiceBean.getGrossAmount() != null) {
            BigDecimal ivaAmount = invoiceBean.getGrossAmount().multiply(new BigDecimal("0.21"));
            invoiceBean.setIvaAmount(ivaAmount);
            invoiceBean.setTotalAmount(invoiceBean.getGrossAmount().add(ivaAmount));
        }
        return SUCCESS;
    }

    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }
    @Override
    public void validate() {
        if (invoiceBean.getSubject().isEmpty()) {
            addFieldError("invoiceBean.subject", "El concepto es obligatorio.");
        }

        if (invoiceBean.getGrossAmount() == null) {
            addFieldError("invoiceBean.grossAmount", "El importe bruto es obligatorio.");
        }

        if (invoiceBean.getDateFrom() == null) {
            addFieldError("invoiceBean.dateFrom", "La fecha inicial es obligatoria.");
        }

        if (invoiceBean.getDateTo() == null) {
            addFieldError("invoiceBean.dateTo", "La fecha final es obligatoria.");
        }

        if (invoiceBean.getDateFrom() != null & invoiceBean.getDateTo() != null)
        {
            if (invoiceBean.getDateFrom().after(invoiceBean.getDateTo())) {
                addFieldError("invoiceBean.dateFromAndDateTo", "La fecha inicial no puede ser mayor que la fecha final.");
            }
        }
    }
}
