<template>
    <div id="MainLayout" class="w-full fixed z-50">
        <div id="TopMenu" class="w-full bg-[#F2F2F2] border-b md:block hidden">
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
                <li class="px-3 hover:text-[#FF4646] cursor-pointer">
                    <font-awesome-icon :icon="['fas', 'user']" size="lg" />
                    <i class="pi pi-mobile" style="font-size: 1rem"></i>
                    App
                </li>
                <li @mouseenter="isAccountMenu = true" @mouseleave="isAccountMenu = false"
                    class="relative flex items-center px-2.5 hover:text-[#FF4646] h-full cursor-pointer"
                    :class="isAccountMenu ? 'bg-white border z-40 shadow-[0_15px_100px_40px_rgba(0,0,0,0.3)]' : 'border border-[#FAFAFA]'">




                </li>

            </ul>
        </div>
    </div>
</template>

<script setup>
import 'primeicons/primeicons.css'

let isAccountMenu = ref(false)



</script>