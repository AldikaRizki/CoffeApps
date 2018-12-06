package com.rizki.aldika.ws.coffeapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.Toast;

import com.rizki.aldika.ws.coffeapp.Network.ApiServices;
import com.rizki.aldika.ws.coffeapp.Network.InitRetrofit;
import com.rizki.aldika.ws.coffeapp.response.BeritaItem;
import com.rizki.aldika.ws.coffeapp.response.ResponseBerita;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;


public class MacamKopiActivity extends AppCompatActivity {
    //deklarasi widget
    private RecyclerView recyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_macam_kopi);
        //inisialisasi widget
        recyclerView = (RecyclerView) findViewById(R.id.rvListBerita);
        //Recycleview harus pakai layout manager
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        //eksekusi method
        tampilBerita();
    }
    private void tampilBerita (){
        ApiServices api = InitRetrofit.getInstance();
        //siapkan request
        //Call<ResponseBerita> beritaCall = api.request_show_all_berita();
        Call<ResponseBerita> beritaCall = api.request_show_all_berita();
        //kirim request
        beritaCall.enqueue(new Callback<ResponseBerita>() {
            @Override
            public void onResponse(Call<ResponseBerita> call, Response<ResponseBerita> response) {
                //pastikan response sukses
                if (response.isSuccessful()){
                    Log.e("response api", response.body().toString());
                    //tampung data response ke variable
                    List<BeritaItem> data_berita = response.body().getBerita();
                    boolean status = response.body().isStatus();
                    //Kalau response statusnya = true
                    if (status){
                        //Buat adapter untuk Recycleview
                        AdapterBerita adapter = new AdapterBerita(MacamKopiActivity.this, data_berita);
                        recyclerView.setAdapter(adapter);
                    }else {
                        //Kalau tidak true
                        Toast.makeText(MacamKopiActivity.this,"Tidak ada berita saat ini", Toast.LENGTH_SHORT).show();
                    }
                }
            }

            @Override
            public void onFailure(Call<ResponseBerita> call, Throwable t) {
                //Print ke log jika error
                t.printStackTrace();

            }
        });
    }

            }