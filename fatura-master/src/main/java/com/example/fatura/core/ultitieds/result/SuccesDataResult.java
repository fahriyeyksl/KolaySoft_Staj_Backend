package com.example.fatura.core.ultitieds.result;

public class SuccesDataResult<T> extends DataResult<T> {
    public SuccesDataResult(T data) {
        super(data, true);
    }

    public SuccesDataResult(T data, String message) {
        super(data, true, message);
    }

    public SuccesDataResult( String message) {
        super(null,true,message);
    }
}
