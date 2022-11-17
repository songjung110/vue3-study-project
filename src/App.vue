<script setup>
import { RouterLink, RouterView } from "vue-router";
// console.log("AAAA");
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
        { id: 3, name: "SOME" },
      ],
    };
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
    <section>
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

    <section class="l-section">
      <div class="l-section__header">
        <h3>Choose Brand</h3>
        <div class="l-section__header__right">
          <button type="button">
            <span class="is-font-color50 fs-13">View All</span>
          </button>
        </div>
      </div>
      <div class="l-section__content">
        <div class="scroll-container filter-list">
          <!-- for 문 돌릴 영역 -->
          <div class="comp filter-list__item" v-for="brand in brands">
            <input type="checkbox" id="bradList_00_01" />
            <label
              for="bradList_00_01"
              class="comp-btn comp-btn__is-square comp-btn__is-add-icon"
            >
              <span class="comp-btn__icon"></span>
              <span class="comp-btn__txt">{{ brand.name }}</span>
            </label>
          </div>
        </div>
      </div>
    </section>

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
        <article class="card">
          <div class="card__img">
            <a href="">
              <img src="" alt="" />
            </a>
            <button type="button" class="comp-btn comp-btn__is-only-icon">
              <span class="comp-btn__icon"></span>
              <span class="comp-btn__txt">favorite</span>
            </button>
          </div>
          <div class="card__txtbox">
            <a href="" class="">Nike Sportswear Club Fleece</a>
            <strong class="">$99</strong>
          </div>
        </article>
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
