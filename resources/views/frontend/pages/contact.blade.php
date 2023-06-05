@extends('layouts.app')

@section('title','Contact Us')

@section('content')

<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

main {
  margin: 20px;
}

section {
  margin-bottom: 30px;
}

h1, h2 {
  text-align: center;
}

p {
  margin-bottom: 15px;
}
</style>
<div class="py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center ">
            <header>
                <h1>Contact Us</h1>
              </header>

              <main>
                <section id="about">
                    <iframe style="margin:10px 0px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27214.72640602828!2d71.21754844935077!3d21.596312566227258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395880e654bc4585%3A0x8f7899f36a2d8104!2sBhojal%20Para%2C%20Amreli%2C%20Gujarat%20365601!5e0!3m2!1sen!2sin!4v1685954097583!5m2!1sen!2sin" width="1100" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  <p>Our mission is to make online shopping convenient, reliable, and enjoyable for everyone. With a user-friendly interface and secure payment options, we aim to build trust and provide exceptional service to our customers.</p>
                  <div class="col-md-3">
                    <div class="footer-underline"></div>
                    <div class="mb-2">
                        <p>
                            <i class="fa fa-map-marker"></i>
                            {{$appSetting->address ?? 'address'}}
                        </p>
                    </div>
                    <div class="mb-2">
                        <a href="" class="text-primary">
                            <i class="fa fa-phone"></i> {{$appSetting->phone1 ?? 'phone 1'}}
                        </a>
                    </div>
                    <div class="mb-2">
                        <a href="" class="text-primary">
                            <i class="fa fa-envelope"></i>  {{$appSetting->email1 ?? 'email 1'}}
                        </a>
                    </div>
                </div>
                  <p>Thank you for choosing ShopNow. Happy shopping!</p>
                </section>
              </main>
        </div>
    </div>
  </div>


@endsection

