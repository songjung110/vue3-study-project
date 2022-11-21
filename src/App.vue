<script setup>
// import { RouterLink, RouterView } from "vue-router";
// 공통(레이아웃) 컴포넌트 - 헤더
import commonHeader from "./layouts/commonHeader.vue";
import commonNav from "./layouts/commonNav.vue";

// 섹션 구성용 컴포넌트
import sectionComponent from "./components/sectionCOMP.vue";
// 섹션 - 컨텐츠 구성 컴포넌트
import titleForm from "./views/main/content/titleForm.vue";
import chooseBrand from "./views/main/content/chooseBrand.vue";
import newArraival from "./views/main/content/newArraival.vue";
</script>
<script>
export default {
  data() {
    return {
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
    // 헤더 컴포넌트
    commonHeader,
    commonNav,
    // 섹션 구성용 컴포넌트
    sectionComponent,
    // 섹션 컨텐츠 컴포넌트
    titleForm,
    chooseBrand,
    newArraival,
  },
};
</script>
<template>
  <common-header></common-header>

  <main class="page-profilter">
    <title-form></title-form>
    <choose-brand></choose-brand>
    <new-arraival></new-arraival>
  </main>

  <common-nav></common-nav>
</template>

<style lang="scss" scoped>
.page-profilter {
  > .l-section__header {
    background: pink !important;
  }
}

main {
  padding: 20px;
}
</style>
