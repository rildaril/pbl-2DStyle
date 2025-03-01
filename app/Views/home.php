<?= $this->extend('templates/main/main-template') ?>

<?= $this->section('styles') ?>
<link rel="stylesheet" href="/assets/css/pages/home.css">
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<div class="hero"></div>
<section class="featured-products d-flex align-items-center flex-column">
    <h2 class="text-center text-uppercase">Top Products</h2>
    <div class="card-wrapper justify-content-center">
        <?php foreach($produk as $pd): ?>
            <div class="card border-0 text-center">
                <div class="card-body">
                    <a href="<?= base_url('detail/'.$pd['url_slug']) ?>"><img class="card-img mb-2" src="<?= base_url('assets/img/produk/'.$pd['gambar']) ?>"></a>
                    <div class="card-title"><?= $pd['nama'] ?></div>
                </div>
            </div>
        <?php endforeach ?>
    </div>
</section>

<section class="produk">
    <h2 class="text-center text-uppercase">On Trending</h2>
    <div class="produk-wrapper d-flex justify-content-center">
        <a href="/produk"><img class="produk-img mb-2 align-self-center" src="/assets/img/hero2.png"></a>
    <!--<div class="produk-text position-relative">
            <h2 class="produk-header">Ambil kontrol untuk memilih produk yang anda sukai.</h2>
            <p style="text-align: justify;">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, ipsa a tempora molestias doloremque quae veniam consectetur alias corrupti iure eum, assumenda ducimus eligendi unde officia impedit, perferendis praesentium laboriosam voluptas. Enim eligendi porro ratione esse rerum, eum reprehenderit dicta architecto facilis, totam, dolor ducimus!</p>
            <div class="produk-extra-text">
                <p style="text-align: justify;">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Illo sapiente, in, excepturi facere repellat earum distinctio exercitationem vitae aut quam autem possimus quo, veniam a esse magnam facilis cupiditate? Molestias, maiores veniam aliquam illum optio, alias repudiandae laudantium quae earum repellendus eligendi explicabo nobis nihil.</p>
                <p style="text-align: justify;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident natus maiores excepturi voluptatum et corporis, eius delectus itaque ab, dolor totam error amet. Earum ullam sed, officia enim, dolorem quas nostrum vitae, odio accusamus debitis aspernatur?</p>
            </div>
            <p class="produk-read-more">Baca selengkapnya...</p>
        </div>-->
    </div>
</section>
<?= $this->endSection() ?>

<?= $this->section('javascript') ?>
<script>
const readMore = () => {
    const readMore = document.querySelector(".produk-read-more");
    const extraText = document.getElementsByClassName("produk-extra-text")[0];

    readMore.addEventListener("click", () => {
        if (extraText.style.display === "") {
            readMore.textContent = "Baca sedikit..."
            extraText.style.display = "block";
        } else {
            extraText.style.display = "";
            readMore.textContent = "Baca selengkapnya..."
        }
    });
}

readMore();
</script>
<?= $this->endSection() ?>