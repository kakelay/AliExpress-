<template>
    <div id="MainLayout" class="w-full fixed z-50">
        <div id="TopMenu" class="w-full bg-[#FAFAFA] border-b md:block hidden">
            <ul class="
                    flex
                    items-center
                    justify-end 
                    text-xs
                    text-[#333333]
                    font-light
                    px-2
                    h-10
                    bg-[#FAFAFA]
                    max-w-[1200px]
                ">
                <li class=" border-r  border-r-gray-400   px-3 hover:text-[#FF4646]  cusor-pointer">
                    Sell on AliExpress
                </li>

                <li class=" border-r  border-r-gray-400   px-3 hover:text-[#FF4646]  cusor-pointer">
                    Cookie Preferences
                </li>
                <li class=" border-r  border-r-gray-400   px-3 hover:text-[#FF4646]  cusor-pointer">
                    Help
                </li>
                <li class=" border-r  border-r-gray-400   px-3 hover:text-[#FF4646]  cusor-pointer">
                    Buyer Protection
                </li>
                <li class="px-3 hover:text-[#FF4646]  ">
                    <Icon name="ic:sharp-install-mobile" /> App

                </li>

                <li @mouseenter="isAccountMenu = true" @mouseleave="isAccountMenu = false"
                    class="relative flex items-center px-2.5 hover:text-[#FF4646] h-full cursor-pointer"
                    :class="isAccountMenu ? 'bg-white border z-40 shadow-[0_15px_100px_40px_rgba(0,0,0,0.3)]' : 'border border-[#FAFAFA]'">
                    <Icon name="ph:user-thin" size="17" />
                    Account
                    <Icon name="mdi:chevron-down" size="15" class="ml-5" />

                    <div id="AccountMenu" v-if="isAccountMenu"
                        class="absolute bg-white w-[220px] text-[#333333] z-40 top-[38px] -left-[100px] border-x border-b">
                        <div v-if="true">
                            <div class="text-semibold text-[15px] my-4 px-3">Welcome to AliExpress!</div>
                            <div class="flex items-center gap-1 px-3 mb-3">
                                <NuxtLink to="/auth"
                                    class="bg-[#FF4646] text-center w-full text-[16px] rounded-t-sm text-white font-semibold p-2">
                                    Login / Register
                                </NuxtLink>
                            </div>
                        </div>
                        <div class="border-b" />
                        <ul class="bg-white">
                            <li @click="navigateTo('/orders')" class="text-[13px] py-2 px-4 w-full hover:bg-gray-200">
                                My Orders
                            </li>
                            <li v-if="true" class="text-[13px] py-2 px-4 w-full hover:bg-gray-200">
                                Sign Out
                            </li>
                        </ul>
                    </div>
                </li>

            </ul>
        </div>
        <div id="MainHeader" class="flex items-center w-full bg-white">
            <div class="flex lg:justify-start justify-between gap-10 max-w-[1150px] w-full px-3 py-5 mx-auto">
                <NuxtLink to="/" class="min-w-[170px]">
                    <img width="170" src="/AliExpress-logo.png">

                </NuxtLink>
            </div>
        </div>
    </div>
</template>

<script setup>
let isAccountMenu = ref(false)
</script>