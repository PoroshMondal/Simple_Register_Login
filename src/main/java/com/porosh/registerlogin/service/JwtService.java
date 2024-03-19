package com.porosh.registerlogin.service;

import com.porosh.registerlogin.domain.User;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.cglib.core.internal.Function;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.util.Arrays;
import java.util.Date;

@Service
public class JwtService {
    private final String SECRET_KEY = "668d1d6baaaace856f917281ced0263a504100c63038b71d22b89610d1569631";

    public String extractUsername(String token){
        return extractClaim(token, Claims::getSubject);
    }

    public boolean isValid(String token, UserDetails user){
        String username = extractUsername(token);
        return (username.equals(user.getUsername())) && !isTokenExpired(token);
    }

    private boolean isTokenExpired(String token){
        return extractExpiration(token).before(new Date());
    }

    private Date extractExpiration(String token){
        return extractClaim(token, Claims::getExpiration);
    }

    public <T> T extractClaim(String token, Function<Claims, T> resolver){
        Claims claims = extractAllClaims(token);
        return resolver.apply(claims);
    }

    private Claims extractAllClaims(String token){
        return Jwts
                .parser()
                .verifyWith(getSigninKey())
                .build()
                .parseSignedClaims(token)
                .getPayload();
    }

    public String generatedToken(User user){
        String token = Jwts
                .builder()
                .subject(user.getUsername())
                .issuedAt(new Date(System.currentTimeMillis()))
                .expiration(new Date(System.currentTimeMillis() + 24*60*60*1000))
                .signWith(getSigninKey())
                .compact();
        return token;
    }

    private SecretKey getSigninKey(){
        byte[] keyBytes = Decoders.BASE64URL.decode(SECRET_KEY);
        System.out.println("Key bytes: " + Arrays.toString(keyBytes));
        System.out.println(Keys.hmacShaKeyFor(keyBytes));
        return Keys.hmacShaKeyFor(keyBytes);
    }

}
