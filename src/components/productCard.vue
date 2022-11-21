<script>
export default {
  props: ["idx", "data"],
};
</script>

<template>
  <!-- <p>{{ data }}</p> -->

  <article class="card" :idx="data.category">
    <div class="card__img">
      <a :href="data.link">
        <img
          :src="data.pic"
          :alt="data.title + ' | category :' + data.category"
        />
      </a>
      <button type="button" class="comp-btn comp-btn__is-only-icon">
        <span class="comp-btn__icon"></span>
        <span class="comp-btn__txt">favorite</span>
      </button>
    </div>
    <div class="card__txtbox">
      <a :href="data.link" class="">{{ data.title }}</a>
      <strong class="">${{ data.price }}</strong>
    </div>
  </article>
</template>

<style lang="scss">
.card {
  display: inline-block;
  width: 50%;
  padding: &__img {
    position: relative;
    width: 100%;
    height: 20rem;
    background: pink;
  }
}
</style>
