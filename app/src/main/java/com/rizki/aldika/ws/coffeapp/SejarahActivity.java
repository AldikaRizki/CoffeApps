package com.rizki.aldika.ws.coffeapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ImageView;

import com.synnapps.carouselview.CarouselView;
import com.synnapps.carouselview.ImageListener;

public class SejarahActivity extends AppCompatActivity {

    CarouselView cvSejarah;
    CarouselView cvSejarah2;

    int[] sampleImages = {R.drawable.kopi1, R.drawable.kopi2, R.drawable.kopi3, R.drawable.kopi4};
    int[] sampleImages2 = {R.drawable.kopi5, R.drawable.kopi6, R.drawable.kopi9, R.drawable.kopi8};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sejarah);

        cvSejarah = (CarouselView) findViewById(R.id.cvSejarah);
        cvSejarah.setPageCount(sampleImages.length);

        cvSejarah.setImageListener(imageListener);

        cvSejarah2 = (CarouselView) findViewById(R.id.cvSejarah2);
        cvSejarah2.setPageCount(sampleImages2.length);

        cvSejarah2.setImageListener(imageListener2);


    }

    ImageListener imageListener = new ImageListener() {
        @Override
        public void setImageForPosition(int position, ImageView imageView) {
            imageView.setImageResource(sampleImages[position]);
        }

    };
    ImageListener imageListener2 = new ImageListener() {
        @Override
        public void setImageForPosition(int position, ImageView imageView) {
            imageView.setImageResource(sampleImages2[position]);
        }

    };
}
