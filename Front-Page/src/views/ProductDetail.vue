<template>
  <div class="product-detail">
    <Navbar />
    <div class="container">
      <!-- breadcrumb -->
      <div class="row mt-5">
        <div class="col">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item">
                <router-link to="/" class="text-dark">Home</router-link>
              </li>
              <li class="breadcrumb-item">
                <router-link to="/product" class="text-dark"
                  >Product</router-link
                >
              </li>
              <li class="breadcrumb-item active" aria-current="page">
                Detail Product
              </li>
            </ol>
          </nav>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-md-6">
          <img
            :src="'../assets/images/' + product.gambar"
            class="img-fluid shadow"
          />
        </div>
        <div class="col-md-6">
          <h2>
            <strong>{{ product.nama }}</strong>
          </h2>
          <hr />
          <h4>
            Harga : <strong>Rp. {{ product.harga }} </strong>
          </h4>
          <form class="mt-4" v-on:submit.prevent>
            <div class="form-group">
              <label for="jumlah_pemesanan">Jumlah</label>
              <input
                type="number"
                class="form-control"
                v-model="pesan.jumlah"
              />
            </div>
            <div class="form-group">
              <label for="alamat">Alamat</label>
              <textarea
                v-model="pesan.alamat"
                class="form-control"
                placeholder="Isikan alamat"
              ></textarea>
            </div>
            <div class="form-group">
              <label for="nomor">Nomor Telepon</label>
              <textarea
                v-model="pesan.no_telp"
                class="form-control"
                placeholder="Isikan nomor telepon"
              ></textarea>
            </div>

            <button type="submit" class="btn btn-success" @click="pemesanan">
              <b-icon-cart></b-icon-cart>Pesan
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Navbar from "@/components/Navbar.vue";
import axios from "axios";

export default {
  name: "ProductDetail",
  components: {
    Navbar,
  },
  data() {
    return {
      product: {},
      pesan: {}
    };
  },
  methods: {
    setProduct(data) {
      this.product = data;
    },
    pemesanan() {
      if(this.pesan.jumlah) {
        this.pesan.id_brg = this.product.id_brg;
      axios
        .post("http://127.0.0.1:8000/api/keranjang", this.pesan)
        .then(() => {
          this.$router.push({ path: "/product" })
          this.$toast.success("Pesanan Anda Berhasil Ditambahkan",{
            type: 'success',
            position: 'top',
            duration: '5000',
            dismissible: true
          });
        })
        .catch((err) => console.log(err))
      }else {
        this.$toast.error("Maaf, Anda Belum Mengisi Inputan Pemesanan",{
            type: 'error',
            position: 'top',
            duration: '5000',
            dismissible: true
          });
      }
    }
  },
  mounted() {
    axios
      .get("http://127.0.0.1:8000/api/keranjang/"+ this.$route.params.id+"/edit")
      .then((response) => this.setProduct(response.data.barang))
      .catch((error) => console.log(error));
  },
};
</script>

<style>
</style>