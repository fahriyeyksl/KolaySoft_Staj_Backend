package com.example.fatura.core.ultitieds.result;

public class DataResult<T> extends Result{
    private T data;

    public DataResult(T data,boolean result) {
        super(result);
        this.data=data;
    }

    public DataResult(T data ,boolean result, String message) {
        super(result, message);
        this.data = data;
    }

    public T getData() {
        return this.data;
    }
}
