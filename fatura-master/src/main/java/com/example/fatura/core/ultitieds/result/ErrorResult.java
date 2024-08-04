package com.example.fatura.core.ultitieds.result;

public class ErrorResult extends Result{
    public ErrorResult() {
        super(false);
    }

    public ErrorResult( String message) {
        super(false, message);
    }
}
