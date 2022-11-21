<script>
import sectionComponent from "../../../components/sectionCOMP.vue";
// 컨텐츠용 컴포넌트
import productCard from "../../../components/productCard.vue";
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
    sectionComponent,
    productCard,
  },
};
</script>
<template>
  <section-component>
    <template #title> <h3>New Arraival</h3></template>
    <template #default>
      <!-- for 문 돌릴 영역 -->
      <product-card
        v-for="(product, index) in products"
        :data="product.data"
      ></product-card>
    </template>
  </section-component>
</template>
