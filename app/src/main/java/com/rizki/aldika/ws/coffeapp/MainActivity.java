package com.rizki.aldika.ws.coffeapp;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    CardView csejarah,cmcmkopi,cpnmkopi,caboutus;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        csejarah=(CardView) findViewById(R.id.sejarah);
        cmcmkopi=(CardView) findViewById(R.id.mcmkopi);
        cpnmkopi=(CardView) findViewById(R.id.pnmkopi);
        caboutus=(CardView) findViewById(R.id.aboutus);

        csejarah.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"Sejarah Kopi",Toast.LENGTH_SHORT).show();
                Intent intent=new Intent(getApplicationContext(), SejarahActivity.class);
                startActivity(intent);
            }
        });
        cmcmkopi.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"Macam-Macam Kopi",Toast.LENGTH_SHORT).show();
                Intent intent=new Intent(getApplicationContext(), MacamKopiActivity.class);
                startActivity(intent);
            }
        });
        cpnmkopi.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"Penemu Kopi",Toast.LENGTH_SHORT).show();
                Intent intent=new Intent(getApplicationContext(), PenemuKopiActivity.class);
                startActivity(intent);
            }
        });

        caboutus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),"About-Us",Toast.LENGTH_SHORT).show();
                Intent intent =new Intent(getBaseContext(),AboutusActivity.class);
                startActivity(intent);
            }
        });
    }
}
