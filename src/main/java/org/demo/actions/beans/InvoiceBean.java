package org.demo.actions.beans;

import java.math.BigDecimal;
import java.util.Date;

public class InvoiceBean {

    private String subject;
    private BigDecimal grossAmount;
    private Date dateFrom;
    private Date dateTo;
    private BigDecimal ivaAmount;
    private BigDecimal totalAmount;

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public BigDecimal getGrossAmount() {return grossAmount; }

    public void setGrossAmount(BigDecimal grossAmount) {
        this.grossAmount = grossAmount;
    }

    public BigDecimal getIvaAmount() { return ivaAmount; }

    public void setIvaAmount(BigDecimal ivaAmount)
    {
        this.ivaAmount = ivaAmount;
    }

    public BigDecimal getTotalAmount() { return totalAmount; }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }
}
