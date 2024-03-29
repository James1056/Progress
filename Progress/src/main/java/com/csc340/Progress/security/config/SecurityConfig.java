package com.csc340.Progress.security.config;

import com.csc340.Progress.user.GymUserDetailsService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

/**
 *
 * @author Dallin Pierce
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig {
    
    private GymUserDetailsService userDetailsService;
    
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests((requests)->requests
                .requestMatchers("/trainer-vids/new-vid").hasAnyRole("TRAINER")
                .requestMatchers("/trainers/new-ad").hasAnyRole("TRAINER")
                .requestMatchers("/splits/new-split").hasAnyRole("INTERMEDIATE","ADVANCED","TRAINER")
                .requestMatchers("/meal/mealPost").hasAnyRole("ADVANCED","TRAINER")
                .requestMatchers("/info/new-info").hasAnyRole("OWNER")
                .requestMatchers("/info/update/*").hasAnyRole("OWNER")
                .anyRequest() .authenticated()
                )
                .formLogin((form) -> form
                .loginPage("/login")
                .permitAll()
                ).exceptionHandling((x) -> x.accessDeniedPage("/403"))
                .logout((logout) -> logout.permitAll())
                .csrf().disable();
        
         return http.build();
    }
    
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(); 
    }
}
