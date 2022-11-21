<template>
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

<style lang="scss">
nav.main-nav {
  position: fixed;
  bottom: 0;
  left: 0;
  height: 7rem;
  width: 100%;
  background: #29363d;

  > ul {
    display: flex;
    justify-content: space-around;
    align-content: center;
    height: 100%;

    > li {
      display: flex;
      align-items: center;
    }
  }
}
</style>
