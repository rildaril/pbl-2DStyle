<section class="sidebar-modal-content text-white d-flex flex-column position-fixed">
    <ul>
        <li class="clickable"><i class='bx bx-x'></i></li>
        <li><a href="<?= base_url('produk') ?>" class="text-white text-decoration-none">Categories</a></li>
        <li><a href="<?= base_url('byseries') ?>" class="text-white text-decoration-none">Shop by Series</a></li>
        <li><a href="<?= base_url('kontak') ?>" class="text-white text-decoration-none">Contact</a></li>
    </ul>

    <?php if(!session()->isUserLogin) { ?>
        <a href="<?= base_url('login') ?>" class="text-white text-decoration-none">Login</a>
        <a href="<?= base_url('register') ?>" class="text-white text-decoration-none">Buat Akun</a>
    <?php } else { ?>
        <a href="<?= base_url('akun') ?>" class="text-decoration-none text-white">Akun saya</a>
    <?php } ?>
</section>