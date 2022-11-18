<script setup>
// import { RouterLink, RouterView } from "vue-router";
// 섹션 구성용 컴포넌트
import sectionComponent from "./components/sectionCOMP.vue";

// 컨텐츠용 컴포넌트
import mainCheckbox from "./components/mainCheckbox.vue";
import productCard from "./components/productCard.vue";
</script>
<script>
export default {
  data() {
    return {
      brands: [
        { id: 0, name: "Adidas" },
        { id: 1, name: "Nike" },
        { id: 2, name: "Fila" },
        { id: 3, name: "PUMA" },
        { id: 4, name: "SOME" },
        { id: 5, name: "Adidas2" },
        { id: 6, name: "Nike2" },
        { id: 7, name: "Fila2" },
      ],
      products: [
        {
          id: 0,
          data: {
            category: "Nike",
            title: "Nike Sportswear Club Fleece",
            price: "99",
            link: "#",
          },
        },
        {
          id: 1,
          data: {
            category: "Nike",
            title: "Trail Running Jacket Nike Windrunner",
            price: "80",
            link: "#",
          },
        },
        {
          id: 2,
          data: {
            category: "Nike",
            title: "Real Life Nike Product",
            price: "17",
            link: "#",
          },
        },
        {
          id: 3,
          data: {
            category: "PUMA",
            title: "PUMA NINIZ JORDY cute",
            price: "39",
            link: "#",
          },
        },
        {
          id: 4,
          data: {
            category: "FILA",
            title: "AWESOME FILA",
            price: "19",
            link: "#",
          },
        },
      ],
    };
  },
  components: {
    // 섹션 구성용 컴포넌트
    sectionComponent,

    // 컨텐츠용 컴포넌트
    mainCheckbox,
    productCard,
  },
};
</script>
<template>
  <header>
    <nav>
      <button
        type="button"
        class="comp-btn comp-btn__is-round comp-btn__is-only-icon nav-btn"
      >
        <span class="comp-btn__txt">menu</span>
        <span class="comp-btn__icon"></span>
      </button>
      <RouterLink
        to="/shop"
        class="comp-btn comp-btn__is-round comp-btn__is-only-icon nav-btn"
      >
        <span class="comp-btn__txt">shop</span>
        <span class="comp-btn__icon"></span
      ></RouterLink>
    </nav>
  </header>

  <main class="page-profilter">
    <section class="l-section">
      <h2>Hemendra</h2>
      <span class="is-font-color50 fs-15">Welcome to Stylish</span>
      <form>
        <div class="comp">
          <input type="text" id="top_search" placeholder="Search..." />
          <label for="top_search"></label>
        </div>
        <button
          type="button"
          class="comp-btn comp-btn__is-square comp-btn__is-only-icon comp-btn__is-large is-point-color__back"
        >
          <span class="comp-btn__txt">voice recognition</span>
          <span class="comp-btn__icon"></span>
        </button>
      </form>
    </section>

    <section-component>
      <template #title><h3>Choose Brand</h3></template>
      <div class="scroll-container filter-list">
        <template #default>
          123123
          <main-checkbox
            v-for="(brand, index) in brands"
            :idx="brand.id"
            :name="brand.name"
          ></main-checkbox>
        </template>
      </div>
    </section-component>

    <section class="l-section">
      <div class="l-section__header">
        <h3>New Arraival</h3>
        <div class="l-section__header__right">
          <button type="button">
            <span class="is-font-color50 fs-13">View All</span>
          </button>
        </div>
      </div>
      <div class="l-section__content">
        <!-- for 문 돌릴 영역 -->
        <product-card
          v-for="(product, index) in products"
          :data="product.data"
        ></product-card>
      </div>
    </section>
  </main>

  <nav class="main-nav">
    <ul>
      <li>
        <a href="#" class="comp-btn comp-btn__is-only-icon nav-btn">
          <span class="comp-btn__txt">Home</span>
          <span class="comp-btn__icon"></span>
        </a>
      </li>
      <li>
        <a href="#" class="comp-btn comp-btn__is-only-icon nav-btn">
          <span class="comp-btn__txt">favorite</span>
          <span class="comp-btn__icon"></span>
        </a>
      </li>
      <li>
        <a href="#" class="comp-btn comp-btn__is-only-icon nav-btn">
          <span class="comp-btn__txt">shop</span>
          <span class="comp-btn__icon"></span>
        </a>
      </li>
      <li>
        <a href="#" class="comp-btn comp-btn__is-only-icon nav-btn">
          <span class="comp-btn__txt">notebook</span>
          <span class="comp-btn__icon"></span>
        </a>
      </li>
    </ul>
  </nav>
</template>

<style lang="scss" scoped>
.page-profilter {
  > .l-section__header {
    background: pink !important;
  }
}
</style>
