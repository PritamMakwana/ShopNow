@extends('layouts.app')

@section('title','About Us')

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
                <h1>About Us</h1>
              </header>

              <main>
                <section id="about">
                  <h2>Welcome to ShopNow</h2>
                  <p>ShopNow is an online marketplace that offers a wide range of products from various categories. We strive to provide our customers with the best shopping experience and top-quality products.</p>
                  <p>Our mission is to make online shopping convenient, reliable, and enjoyable for everyone. With a user-friendly interface and secure payment options, we aim to build trust and provide exceptional service to our customers.</p>
                  <p>At ShopNow, we work with trusted suppliers to ensure that our customers receive genuine products. We constantly update our inventory to bring you the latest trends and best deals.</p>
                  <p>Thank you for choosing ShopNow. Happy shopping!</p>
                </section>
              </main>
        </div>
    </div>
  </div>


@endsection

