<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
      <li class="nav-item {{Request::is('admin/dashboard') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/dashboard')}}">
          <i class="mdi mdi-home menu-icon"></i>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/orders*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/orders')}}">
          <i class="mdi mdi-sale menu-icon"></i>
          <span class="menu-title">Orders</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/category*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/category')}}">
          <i class="mdi mdi-view-list menu-icon"></i>
          <span class="menu-title">Category</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/products*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/products')}}">
          <i class="mdi mdi-grid-large menu-icon"></i>
          <span class="menu-title">products</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/brands*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/brands')}}">
          <i class="mdi  mdi-chart-pie menu-icon"></i>
          <span class="menu-title">Brands</span>
        </a>
      </li>
      <li class="nav-item  {{Request::is('admin/colors*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/colors')}}">
          <i class="mdi mdi-emoticon menu-icon"></i>
          <span class="menu-title">Colors</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/users*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/users')}}">
          <i class="mdi mdi-account menu-icon"></i>
          <span class="menu-title">Users</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/sliders*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/sliders')}}">
          <i class="mdi mdi-view-carousel menu-icon"></i>
          <span class="menu-title">Slider</span>
        </a>
      </li>

      <li class="nav-item {{Request::is('admin/settings*') ? 'active':''}}">
        <a class="nav-link" href="{{url('admin/settings')}}">
          <i class="mdi mdi-settings menu-icon"></i>
          <span class="menu-title">Site Setting</span>
        </a>
      </li>

    </ul>
  </nav>
